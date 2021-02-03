<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserFixtures extends Fixture
{
    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager)
    {
        $contributor = new User();

        $contributor->setUsername('admin');

        $contributor->setRoles(['ROLE_ADMIN']);

        $contributor->setPassword($this->passwordEncoder->encodePassword($contributor, 'admin'));

        $manager->persist($contributor);

        $manager->flush();
    }
}
