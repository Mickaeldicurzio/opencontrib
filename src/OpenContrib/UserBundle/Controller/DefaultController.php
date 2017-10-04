<?php

namespace OpenContrib\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($id)
    {
      $user = $this->container->get('security.token_storage')->getToken()->getUser();
      $id = $user->getId();
      return $this->render('OpenContribUserBundle:Default:view.html.twig', array(
  'user' => $user
));
    }
}
