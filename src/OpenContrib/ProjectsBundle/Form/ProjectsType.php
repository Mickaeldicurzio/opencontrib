<?php

namespace OpenContrib\ProjectsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use OpenContrib\ProjectsBundle\Entity\Projects;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Vich\UploaderBundle\Form\Type\VichImageType;

class ProjectsType extends AbstractType
{

  public function buildForm(FormBuilderInterface $builder, array $options)
  {
      $builder
          ->add('imageFile', VichImageType::class );

  }


    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'OpenContrib\ProjectsBundle\Entity\Projects'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'opencontrib_projectsbundle_projects';
    }


}
