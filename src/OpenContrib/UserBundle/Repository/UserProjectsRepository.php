<?php
/**
 * Created by PhpStorm.
 * User: sanial
 * Date: 04/10/17
 * Time: 22:42
 */

namespace OpenContrib\UserBundle\Repository;

use Doctrine\ORM\EntityRepository;

class UserProjectsRepository extends EntityRepository
{
    public function FindAllFollowedProjects($id)
    {
           $qb = $this->_em->createQueryBuilder()

            ->select('u.projects_id')
            ->from($this->_entityName, 'u')
            ->where('u.user_id = :currentIdUser')
            ->setParameter('currentIdUser', $id)
            ->orderBy('u.projects_id', 'DESC')
        ;

        return $qb
            ->getQuery()
            ->getResult()
            ;
    }
}