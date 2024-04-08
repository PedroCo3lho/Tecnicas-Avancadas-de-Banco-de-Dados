/*markdown
# Modelo Conceitual Entidade Relação
![alt text](image.png)

# Modelo Lógico MySQL (MariaDB)
*/

USE avaliacaon1;

CREATE TABLE `Motorista`(
    `id_Motorista` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Nome_Motorista` VARCHAR(150) NOT NULL,
    `Sexo_Motorista` ENUM('M', 'F') NOT NULL
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

CREATE TABLE `Motorista_Veiculo` (
    `id_Motorista_Veiculo` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `FK_Motorista` BIGINT UNSIGNED NOT NULL,
    `FK_Veiculo` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`FK_Motorista`) REFERENCES `Motorista`(`id_Motorista`),
    FOREIGN KEY (`FK_Veiculo`) REFERENCES `Veiculos`(`id_Veiculo`)
);
