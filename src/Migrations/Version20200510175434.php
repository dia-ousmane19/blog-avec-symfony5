<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200510175434 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE commentaires_reponses_commentaires (commentaires_id INT NOT NULL, reponses_commentaires_id INT NOT NULL, INDEX IDX_94C5346817C4B2B0 (commentaires_id), INDEX IDX_94C53468DA5E81DC (reponses_commentaires_id), PRIMARY KEY(commentaires_id, reponses_commentaires_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE commentaires_reponses_commentaires ADD CONSTRAINT FK_94C5346817C4B2B0 FOREIGN KEY (commentaires_id) REFERENCES commentaires (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE commentaires_reponses_commentaires ADD CONSTRAINT FK_94C53468DA5E81DC FOREIGN KEY (reponses_commentaires_id) REFERENCES reponses_commentaires (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE commentaires_reponses_commentaires');
    }
}
