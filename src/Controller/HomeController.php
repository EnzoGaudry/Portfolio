<?php

namespace App\Controller;

use App\Repository\ImageRepository;
use App\Repository\ClientRepository;
use App\Repository\ProjectRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ProjectRepository $projectRepository, ImageRepository $imageRepository): Response
    {
        $projects = $projectRepository->findAll();
        $images = $imageRepository->findBy(['priority' => '1']);
        return $this->render('home/index.html.twig', ['projects' => $projects, 'images' => $images]);
    }

    /**
     * @Route("/about", name="about")
     */
    public function about(ImageRepository $imageRepository, ClientRepository $clientRepository): Response
    {
        $images = $imageRepository->findBy(['priority' => '1'], null, 3);
        $clients = $clientRepository->findBy([], ['dateEnd' => 'DESC']);
        return $this->render('home/about.html.twig', ['images' => $images, 'clients' => $clients]);
    }

    /**
     * @Route("/show/{id}", name="show")
     */
    public function show(ProjectRepository $projectRepository, ImageRepository $imageRepository, $id): Response
    {
        $projects = $projectRepository->findBy(['id' => $id]);
        $images = $imageRepository->findBy(['project' => $id]);
        return $this->render('home/show.html.twig', ['projects' => $projects, 'images' => $images]);
    }
}
