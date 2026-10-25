CREATE DATABASE empresa_1
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE empresa_1;

CREATE TABLE departamentos (
    id_departamento INT,
    nome VARCHAR(50)
);

CREATE TABLE cargos (
    id_cargo INT,
    nome VARCHAR(30)
);

CREATE TABLE funcionarios (
    id_funcionario INT,
    nome VARCHAR(100),
    cpf CHAR(11),
    salario DECIMAL(10,2),
    email VARCHAR(254),
    data_contratacao DATE,
    id_departamento INT,
    id_cargo INT
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE material (
    id_material INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

--- Criando usuarios, lembrando que não é nem um pouco seguro o uso de senhas no código... é só para testes.

CREATE USER 'usuario_junior'@'localhost'
IDENTIFIED BY 'ALTERAR PASSWORD';

CREATE USER 'usuario_senior'@'localhost'
IDENTIFIED BY 'ALTERAR PASSWORD';
