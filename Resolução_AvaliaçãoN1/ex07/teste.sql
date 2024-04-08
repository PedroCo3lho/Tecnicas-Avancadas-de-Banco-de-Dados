/*markdown
# Modelo Conceitual Entidade Relação
![alt text](image.png)

# Modelo Lógico MySQL (MariaDB)
*/

USE AvaliacaoN1;

CREATE TABLE `Motorista`(
    `id_Motorista` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Nome_Motorista` VARCHAR(150) NOT NULL,
    `Sexo_Motorista` ENUM('M', 'F') NOT NULL,
    `FK_Veiculos_Atribuidos` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `Veiculos`(
    `id_Veiculo` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Modelo_Veiculo` VARCHAR(50) NOT NULL,
    `Marca_Veiculo` VARCHAR(50) NOT NULL,
    `Status_Veiculo` ENUM(
        'Disponível',
        'Indisponível',
        'Em Manutenção'
    ) NOT NULL
);

ALTER TABLE
    `Motorista` ADD FOREIGN KEY(`FK_Veiculos_Atribuidos`) REFERENCES `Veiculos`(`id_Veiculo`);