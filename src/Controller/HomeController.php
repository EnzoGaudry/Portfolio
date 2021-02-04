<?php

namespace App\Controller;

use App\Repository\ImageRepository;
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
        $images = $imageRepository->findAll();
        return $this->render('home/index.html.twig', ['projects' => $projects, 'images' => $images]);
    }
}
