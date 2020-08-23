<?php

namespace App\Repository;

use App\Entity\ReponsesCommentaires;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ReponsesCommentaires|null find($id, $lockMode = null, $lockVersion = null)
 * @method ReponsesCommentaires|null findOneBy(array $criteria, array $orderBy = null)
 * @method ReponsesCommentaires[]    findAll()
 * @method ReponsesCommentaires[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ReponsesCommentairesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ReponsesCommentaires::class);
    }

    // /**
    //  * @return ReponsesCommentaires[] Returns an array of ReponsesCommentaires objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ReponsesCommentaires
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
