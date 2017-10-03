<?php

namespace OpenContrib\ViewBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('OpenContribViewBundle:Default:index.html.twig');
    }
}
