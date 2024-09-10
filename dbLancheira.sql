-- Apagar banco de dados, se existir
DROP DATABASE IF EXISTS dbLancheira;

-- Criar banco de dados
CREATE DATABASE dbLancheira;

-- Acessar o banco de dados
USE dbLancheira;


-- Criar tabelas no banco de dados
CREATE TABLE tbConstrutores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    imagem_url VARCHAR(255)
);

CREATE TABLE tbReguladores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    imagem_url VARCHAR(255)
);

CREATE TABLE tbEnergeticos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    imagem_url VARCHAR(255)
);

-- Inserindo dados na tabela de Construtores
INSERT INTO tbConstrutores (nome, descricao, imagem_url)
VALUES ('Frango', 'Fonte rica em proteínas', 'https://example.com/frango.jpg'),
       ('Ovo', 'Alimento com alta qualidade proteica', 'https://example.com/ovo.jpg');


-- Inserindo dados na tabela de Reguladores
INSERT INTO tbReguladores (nome, descricao, imagem_url)
VALUES ('Maçã', 'Fruta rica em vitaminas e fibras', 'https://example.com/maca.jpg'),
       ('Cenoura', 'Legume rico em betacaroteno', 'https://example.com/cenoura.jpg');


-- Inserindo dados na tabela de Energéticos
INSERT INTO tbEnergeticos (nome, descricao, imagem_url)
VALUES ('Arroz', 'Fonte de carboidratos de rápida absorção', 'https://example.com/arroz.jpg'),
       ('Batata', 'Carboidrato complexo', 'https://example.com/batata.jpg');


-- Visualizar os registros das tabelas
SELECT * FROM tbConstrutores;
SELECT * FROM tbReguladores;
SELECT * FROM tbEnergeticos;