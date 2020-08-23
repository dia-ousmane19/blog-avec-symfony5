<?php

namespace App\Entity;

use App\Repository\MotsClesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=MotsClesRepository::class)
 */
class MotsCles
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=70)
     */
    private $motcle;

    /**
     * @ORM\ManyToMany(targetEntity=Articles::class, mappedBy="motcle")
     */
    private $articles;

    public function __construct()
    {
        $this->articles = new ArrayCollection();
    }
    public function __toString()
    {
       return $this->motcle;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMotcle(): ?string
    {
        return $this->motcle;
    }

    public function setMotcle(string $motcle): self
    {
        $this->motcle = $motcle;

        return $this;
    }

    /**
     * @return Collection|Articles[]
     */
    public function getArticles(): Collection
    {
        return $this->articles;
    }

    public function addArticle(Articles $article): self
    {
        if (!$this->articles->contains($article)) {
            $this->articles[] = $article;
            $article->addMotcle($this);
        }

        return $this;
    }

    public function removeArticle(Articles $article): self
    {
        if ($this->articles->contains($article)) {
            $this->articles->removeElement($article);
            $article->removeMotcle($this);
        }

        return $this;
    }
}
