<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MailController extends AbstractController
{
    /**
     * @Route("/contact", name="mail")
     */
    public function index(Request $request, \Swift_Mailer $mailer): Response
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $contact = $form->getData();
            $message = (new \Swift_Message($form->get('subject')->getData()))
                ->setFrom($form->get('email')->getData())
                ->setTo('xzozo51430@gmail.com')
                ->setBody($form->get('message')->getData())
            ;
            $mailer->send($message);
        }
        return $this->render('mail/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
