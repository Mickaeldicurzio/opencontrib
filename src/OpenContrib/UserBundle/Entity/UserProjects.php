<?php
/**
 * Created by PhpStorm.
 * User: sanial
 * Date: 04/10/17
 * Time: 14:39
 */

namespace OpenContrib\UserBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="OpenContrib\UserBundle\Repository\UserProjectsRepository")
 */     
class UserProjects
{
    /**
     * @ORM\id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\user
     * @ORM\ManyToOne(targetEntity="OpenContrib\UserBundle\Entity\User")
     * @ORM\JoinColumn(nullable=false)
     */
    private $user;


    /**
     * @ORM\projects
     * @ORM\ManyToOne(targetEntity="OpenContrib\ProjectsBundle\Entity\Projects")
     * @ORM\JoinColumn(nullable=false)
     */
    private $projects;

    /**
     * @return mixed
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * @param mixed $user
     */
    public function setUser($user)
    {
        $this->user = $user;
    }

    /**
     * @return mixed
     */
    public function getProjects()
    {
        return $this->projects;
    }

    /**
     * @param mixed $projects
     */
    public function setProjects($projects)
    {
        $this->projects = $projects;
    }




    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }
}
