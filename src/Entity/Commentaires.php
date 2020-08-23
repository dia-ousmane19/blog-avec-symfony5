<?php

namespace App\Entity;


use Gedmo\Mapping\Annotation as Gedmo;
use App\Repository\CommentairesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CommentairesRepository::class)
 */
class Commentaires
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
    private $pseudo;

    /**
     * @ORM\Column(type="text")
     */
    private $contenu;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $email;

    /**
     * @var \DateTime $created_at
     *
     * @Gedmo\Timestampable(on="create")
     * @ORM\Column(type="datetime")
     */
    private $created_at;

    /**
     * @ORM\ManyToOne(targetEntity=Articles::class, inversedBy="commentaire")
     * @ORM\JoinColumn(nullable=false)
     */
    private $articles;

    /**
     * @ORM\ManyToMany(targetEntity=ReponsesCommentaires::class, inversedBy="commentaires")
     */
    private $reponse_commentaire;

    public function __construct()
    {
        $this->reponse_commentaire = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPseudo(): ?string
    {
        return $this->pseudo;
    }

    public function setPseudo(string $pseudo): self
    {
        $this->pseudo = $pseudo;

        return $this;
    }

    public function getContenu(): ?string
    {
        return $this->contenu;
    }

    public function setContenu(string $contenu): self
    {
        $this->contenu = $contenu;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->created_at;
    }


    public function getArticles(): ?Articles
    {
        return $this->articles;
    }

    public function setArticles(?Articles $articles): self
    {
        $this->articles = $articles;

        return $this;
    }

    /**
     * @return Collection|ReponsesCommentaires[]
     */
    public function getReponseCommentaire(): Collection
    {
        return $this->reponse_commentaire;
    }

    public function addReponseCommentaire(ReponsesCommentaires $reponseCommentaire): self
    {
        if (!$this->reponse_commentaire->contains($reponseCommentaire)) {
            $this->reponse_commentaire[] = $reponseCommentaire;
        }

        return $this;
    }

    public function removeReponseCommentaire(ReponsesCommentaires $reponseCommentaire): self
    {
        if ($this->reponse_commentaire->contains($reponseCommentaire)) {
            $this->reponse_commentaire->removeElement($reponseCommentaire);
        }

        return $this;
    }
}
