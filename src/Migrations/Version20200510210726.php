<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200510210726 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE profil ADD users_id INT NOT NULL');
        $this->addSql('ALTER TABLE profil ADD CONSTRAINT FK_E6D6B29767B3B43D FOREIGN KEY (users_id) REFERENCES profil (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_E6D6B29767B3B43D ON profil (users_id)');
        $this->addSql('ALTER TABLE users DROP FOREIGN KEY FK_1483A5E9275ED078');
        $this->addSql('DROP INDEX UNIQ_1483A5E9275ED078 ON users');
        $this->addSql('ALTER TABLE users DROP profil_id');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE profil DROP FOREIGN KEY FK_E6D6B29767B3B43D');
        $this->addSql('DROP INDEX UNIQ_E6D6B29767B3B43D ON profil');
        $this->addSql('ALTER TABLE profil DROP users_id');
        $this->addSql('ALTER TABLE users ADD profil_id INT NOT NULL');
        $this->addSql('ALTER TABLE users ADD CONSTRAINT FK_1483A5E9275ED078 FOREIGN KEY (profil_id) REFERENCES profil (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_1483A5E9275ED078 ON users (profil_id)');
    }
}
