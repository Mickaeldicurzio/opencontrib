<?php

namespace OpenContrib\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ConnectController extends Controller
{


    public function indexAction()
    {

$user = $this->container->get('security.token_storage')->getToken()->getUser();


        return $this->render('OpenContribUserBundle:Default:connect.html.twig', array(
    'user' => $user
));

}


}
