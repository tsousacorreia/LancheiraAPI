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

CREATE TABLE tbSnacks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    imagem_url VARCHAR(255)
);

-- Inserindo dados na tabela de Construtores
INSERT INTO tbConstrutores (nome, descricao, imagem_url)
VALUES ('Frango', 'Fonte rica em proteínas', 'https://example.com/frango.jpg'),
       ('Ovo', 'Alimento com alta qualidade proteica', 'https://example.com/ovo.jpg'),
       ('Peixe', 'Rico em ômega 3 e proteínas', 'https://example.com/peixe.jpg'),
       ('Carne bovina', 'Fonte de ferro e proteínas', 'https://example.com/carne.jpg'),
       ('Queijo', 'Alimento rico em cálcio e proteínas', 'https://example.com/queijo.jpg');

-- Inserindo dados na tabela de Reguladores
INSERT INTO tbReguladores (nome, descricao, imagem_url)
VALUES ('Maçã', 'Fruta rica em vitaminas e fibras', 'https://example.com/maca.jpg'),
       ('Cenoura', 'Legume rico em betacaroteno', 'https://example.com/cenoura.jpg'),
       ('Brócolis', 'Vegetal rico em fibras e antioxidantes', 'https://example.com/brocolis.jpg'),
       ('Alface', 'Folha verde rica em vitaminas e minerais', 'https://example.com/alface.jpg'),
       ('Banana', 'Fruta rica em potássio', 'https://example.com/banana.jpg');

-- Inserindo dados na tabela de Energéticos
INSERT INTO tbEnergeticos (nome, descricao, imagem_url)
VALUES ('Arroz', 'Fonte de carboidratos de rápida absorção', 'https://example.com/arroz.jpg'),
       ('Batata', 'Carboidrato complexo', 'https://example.com/batata.jpg'),
       ('Macarrão', 'Fonte de carboidratos para energia', 'https://example.com/macarrao.jpg'),
       ('Pão', 'Alimento básico rico em carboidratos', 'https://example.com/pao.jpg'),
       ('Aveia', 'Rico em fibras e carboidratos complexos', 'https://example.com/aveia.jpg');

-- Inserindo dados na tabela de Snacks
INSERT INTO tbSnacks (nome, descricao, imagem_url)
VALUES ('Iogurte', 'Rico em cálcio e proteínas', 'https://example.com/iogurte.jpg'),
       ('Biscoito integral', 'Fonte de fibras e carboidratos', 'https://example.com/biscoito.jpg'),
       ('Granola', 'Mistura rica em fibras e nutrientes', 'https://example.com/granola.jpg'),
       ('Castanha', 'Fonte de gorduras saudáveis', 'https://example.com/castanha.jpg'),
       ('Barra de cereal', 'Alimento prático e energético', 'https://example.com/barra.jpg');

-- Visualizar os registros das tabelas
SELECT * FROM tbConstrutores;
SELECT * FROM tbReguladores;
SELECT * FROM tbEnergeticos;
SELECT * FROM tbSnacks;
