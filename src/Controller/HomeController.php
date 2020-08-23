<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CategoriesRepository;
use App\Repository\ArticlesRepository;
use App\Repository\ProfilRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Knp\Component\Pager\PaginatorInterface;


class HomeController extends AbstractController
{

  /**
  * @Route("/", name="home")
  */
  public function index(PaginatorInterface $paginator, Request $request,CategoriesRepository $categoriesRepository, ArticlesRepository $articlesRepository)
  {
    // pour les Articles
    $donnee=$articlesRepository->findAllArticle();
    $articles = $paginator->paginate(
        $donnee, /* query NOT result */
        $request->query->getInt('page', 1), /*page number*/
        6 /*limit per page*/
    );

    //pour les categorie
    $AllcategorieAndSlug=$categoriesRepository->FindAllCategorieAndSlug();
    return $this->render('home/index.html.twig',[

      'AllcategorieAndSlug' => $AllcategorieAndSlug,
      'articles' => $articles
    ]);
  }
  /**
  * @Route("/categorie/{slug}", name="categorie")
  */
  public function categorie(CategoriesRepository $categoriesRepository, $slug)
  {
    //recuperer les articles par categorie
    $articleParCategories=$categoriesRepository->ArticleParcategorie($slug);
    //dd($articleParCategories);


    //pour les categorie
    $AllcategorieAndSlug=$categoriesRepository->FindAllCategorieAndSlug();
    return $this->render('home/categorie.html.twig',[
      'AllcategorieAndSlug' => $AllcategorieAndSlug,
      'articleParCategories' => $articleParCategories
    ]);
  }
  /**
  * @Route("/article/{slug}", name="article")
  */
  public function ArticleComplet(CategoriesRepository $categoriesRepository,ArticlesRepository $articlesRepository, $slug)
  {
    $articleComplet=$articlesRepository->articleComplet($slug);

    //pour les categorie
    $AllcategorieAndSlug=$categoriesRepository->FindAllCategorieAndSlug();
    return $this->render('home/article.html.twig',[
      'articleComplet' => $articleComplet,
      'AllcategorieAndSlug' => $AllcategorieAndSlug,
    ]);

  }
  /**
  * @Route("/profil/{id}", name="profil")
  */
  public function profilUser(ProfilRepository $profilRepository,$id):Response
  {
    $profil=$profilRepository->findProfilUser($id);
    dd($profil);
    return $this->render('home/profil.html.twig');
  }

}
