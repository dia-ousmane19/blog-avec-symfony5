<?php

namespace App\Entity;

use App\Repository\ProfilRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * @Vich\Uploadable
 * @ORM\Entity(repositoryClass=ProfilRepository::class)
 */
class Profil
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
    private $numero_de_telephone;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $photo;
    /**
    * @Vich\UploadableField(mapping="upload_image", fileNameProperty="$photo")
    * @var File
    */
   private $imageFile;

    /**
     * @ORM\Column(type="text")
     */
    private $a_propos;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $adresse;



    /**
     * @ORM\OneToOne(targetEntity=Users::class, inversedBy="profil", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $users;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNumeroDeTelephone(): ?string
    {
        return $this->numero_de_telephone;
    }

    public function setNumeroDeTelephone(string $numero_de_telephone): self
    {
        $this->numero_de_telephone = $numero_de_telephone;

        return $this;
    }
    public function setImageFile(File $photo = null)
   {
       $this->imageFile = $photo;

       // VERY IMPORTANT:
       // It is required that at least one field changes if you are using Doctrine,
       // otherwise the event listeners won't be called and the file is lost
       if ($photo) {
           // if 'updatedAt' is not defined in your entity, use another property
           $this->updatedAt = new \DateTime('now');
       }
   }

   public function getImageFile()
   {
       return $this->imageFile;
   }

    public function getPhoto()
    {
        return $this->photo;
    }

    public function setPhoto(string $photo)
    {
        $this->photo = $photo;

        return $this;
    }

    public function getAPropos(): ?string
    {
        return $this->a_propos;
    }

    public function setAPropos(string $a_propos): self
    {
        $this->a_propos = $a_propos;

        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): self
    {
        $this->adresse = $adresse;

        return $this;
    }


    public function getUsers(): ?Users
    {
        return $this->users;
    }

    public function setUsers(Users $users): self
    {
        $this->users = $users;

        // set the owning side of the relation if necessary
        if ($users->getProfil() !== $this) {
            $users->setProfil($this);
        }

        return $this;
    }
}
