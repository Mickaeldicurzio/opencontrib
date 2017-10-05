<?php
/**
 * Created by PhpStorm.
 * User: sanial
 * Date: 04/10/17
 * Time: 23:46
 */

namespace OpenContrib\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use FOS\UserBundle\Model\UserInterface;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;
use OpenContrib\UserBundle\Entity\UserProjects;


class ProjectsFollowedController extends Controller
{
    /**
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function listingAction(){
        $user = $this->container->get('security.token_storage')->getToken()->getUser();
        if (!is_object($user) || !$user instanceof UserInterface) {
            throw new AccessDeniedException('This user does not have access to this section.');
        }
        $id = $user->getId();
        $projects = $this->getDoctrine()->getRepository('OpenContribUserBundle:UserProjects')->FindAllFollowedProjects($id);



        return $this->render('OpenContribUserBundle:Default:view.html.twig', [
            'projectsList' => $projects,
            'user'=>$user
        ]);
    }
}