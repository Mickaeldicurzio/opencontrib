<?php

namespace OpenContrib\ProjectsBundle\Entity;

use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\File;
use Doctrine\ORM\Mapping as ORM;

/**
 * Projects
 *
 * @ORM\Table(name="projects")
 * @ORM\Entity(repositoryClass="OpenContrib\ProjectsBundle\Repository\ProjectsRepository")
 * @Vich\Uploadable
 */
class Projects
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, unique=true)
     * @var string $nom
     */
    private $nom;

    /**
     * @ORM\Column(type="string")
     * @var string $description
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255)
     * @var string $categorie
     */
    private $categorie;

    /**
     * @Assert\DateTime()
     */
    private $date;

    /**
     * @ORM\Column(type="string", length=255)
     * @var string $imageName
     */
    private $imageName;

    /**
    * @var status
    * @ORM\Column(name="status", type="boolean", nullable=true, options={"default":false})
    */
    private $status;

    /**
     * @Vich\UploadableField(mapping="projects_images", fileNameProperty="imageName")
     * @var File
     */
    private $imageFile;


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**

     * @ORM\ManyToMany(targetEntity="OpenContrib\UserBundle\Entity\User", cascade={"persist"})

     */

    private $user;


      public function __construct()
      {
        $this->date = new \Datetime('now');
      }

    /**
     * If manually uploading a file (i.e. not using Symfony Form) ensure an instance
     * of 'UploadedFile' is injected into this setter to trigger the  update. If this
     * bundle's configuration parameter 'inject_on_load' is set to 'true' this setter
     * must be able to accept an instance of 'File' as the bundle will inject one here
     * during Doctrine hydration.
     *
     * @param File|\Symfony\Component\HttpFoundation\File\UploadedFile $image
     */
    public function setImageFile(File $image = null)
    {
        $this->imageFile = $image;

        if ($image) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->updatedAt = new \DateTime('now');
        }
    }

    /**
     * @return File
     */
    public function getImageFile()
    {
        return $this->imageFile;
    }

    /**
     * @param string $imageName
     */
    public function setImageName($imageName)
    {
        $this->imageName = $imageName;
    }

    /**
     * @return string
     */
    public function getImageName()
    {
        return $this->imageName;
    }


    /**
     * Set nom
     *
     * @param string $nom
     * @return Projects
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Projects
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }



    /**
     * Set categorie
     *
     * @param string $categorie
     * @return Projects
     */
    public function setCategorie($categorie)
    {
        $this->categorie = $categorie;

        return $this;
    }

    /**
     * @param \DateTime $date
     */
    public function setDate($date)
    {
      $this->date = $date;
    }

    /**
     * @return \DateTime
     */
    public function getDate()
    {
      return $this->date;
    }

    /**
     * Get categorie
     *
     * @return string
     */
    public function getCategorie()
    {
        return $this->categorie;
    }

    /**
     * Set status
     *
     * @param boolean $status
     * @return Projects
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return boolean
     */
    public function getStatus()
    {
        return $this->status;
    }
}
