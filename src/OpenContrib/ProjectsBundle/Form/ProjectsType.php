<?php

namespace OpenContrib\ProjectsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use OpenContrib\ProjectsBundle\Entity\Projects;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Vich\UploaderBundle\Form\Type\VichImageType;

class ProjectsType extends AbstractType
{

  public function buildForm(FormBuilderInterface $builder, array $options)
  {
      $builder
          ->add('imageFile', VichImageType::class )
          ->add('nom', TextType::class)
          ->add('description', TextareaType::class)
          ->add('categorie',ChoiceType::class, array(
            'choices' => array(
                'Business',
                'Écologie',
                'Web',
                'Quotidien',
                'Art & Culture'
            ),
            'preferred_choices' => array('muppets', 'arr'),))
          ->add('date', DateType::class, array(
          'data' => new \DateTime(),
            'format' => 'yyyy-MM-dd',
          ))
          ->add('status', ChoiceType::class, array(
                'choices'  => array(
                    true => 'oui',
                    false => 'non',
    )));

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
