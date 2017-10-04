<?php
/**
 * Created by PhpStorm.
 * User: sanial
 * Date: 04/10/17
 * Time: 14:39
 */

namespace OpenContrib\UserBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

class UserProjects
{

    /**
     * @ORM\ManyToOne(targetEntity="OpenContrib\UserBundle\Entity\User")
     * @ORM\JoinColumn(nullable=false)
     */

    private $user;


    /**
     * @ORM\ManyToOne(targetEntity="OpenContrib\ProjectsBundle\Entity\Projects")
     * @ORM\JoinColumn(nullable=false)
     */

    private $projects;

}



