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
VALUES ('Ovo cozido', 'Fonte de proteínas e gorduras saudáveis, ideal para o crescimento', 'https://example.com/ovo_cozido.jpg'),
       ('Queijo cottage', 'Baixo em gordura e rico em proteínas, ótimo para ossos e músculos', 'https://example.com/queijo_cottage.jpg'),
       ('Peito de frango grelhado', 'Rico em proteínas magras, fácil de digerir e saboroso', 'https://example.com/frango_grelhado.jpg'),
       ('Iogurte natural', 'Fornece proteínas e probióticos, essenciais para a saúde intestinal', 'https://example.com/iogurte_natural.jpg'),
       ('Pasta de amendoim', 'Fonte de proteína e gorduras saudáveis, perfeita em pequenas porções', 'https://example.com/pasta_amendoim.jpg'),
       ('Ricota', 'Queijo leve e rico em proteínas, com baixo teor de sódio', 'https://example.com/ricota.jpg'),
       ('Homus', 'Creme de grão-de-bico, rico em proteínas e fibras', 'https://example.com/homus.jpg'),
       ('Tofu', 'Alternativa vegetal rica em proteínas, ótimo para lanches vegetarianos', 'https://example.com/tofu.jpg'),
       ('Leite de amêndoas', 'Bebida leve, rica em cálcio e proteínas', 'https://example.com/leite_amendoas.jpg'),
       ('Nozes e castanhas', 'Fontes de proteínas e gorduras boas', 'https://example.com/nozes_castanhas.jpg');

-- Inserindo dados na tabela de Reguladores
INSERT INTO tbReguladores (nome, descricao, imagem_url)
VALUES ('Cenoura baby', 'Fonte de vitamina A e fibras', 'https://example.com/cenoura_baby.jpg'),
       ('Pepino', 'Rico em água e fibras, ajuda na hidratação', 'https://example.com/pepino.jpg'),
       ('Tomate cereja', 'Fonte de vitaminas C e A', 'https://example.com/tomate_cereja.jpg'),
       ('Uvas', 'Cheias de antioxidantes e vitamina C', 'https://example.com/uvas.jpg'),
       ('Maçã', 'Rica em fibras e vitamina C', 'https://example.com/maca.jpg'),
       ('Banana', 'Fonte de potássio e fibras', 'https://example.com/banana.jpg'),
       ('Morango', 'Rico em vitamina C e antioxidantes', 'https://example.com/morango.jpg'),
       ('Laranja em gomos', 'Fonte de vitamina C e hidratação', 'https://example.com/laranja.jpg'),
       ('Mamão', 'Rico em vitamina A e enzimas digestivas', 'https://example.com/mamao.jpg'),
       ('Pêra', 'Fruta doce e rica em fibras', 'https://example.com/pera.jpg');

-- Inserindo dados na tabela de Energéticos
INSERT INTO tbEnergeticos (nome, descricao, imagem_url)
VALUES ('Granola', 'Mix de aveia, mel e sementes', 'https://example.com/granola.jpg'),
       ('Biscoito integral', 'Fonte de fibras e carboidratos complexos', 'https://example.com/biscoito_integral.jpg'),
       ('Pão integral', 'Rico em fibras e carboidratos', 'https://example.com/pao_integral.jpg'),
       ('Banana seca', 'Alternativa doce e rica em potássio', 'https://example.com/banana_seca.jpg'),
       ('Barras de cereais', 'Fonte de fibras e carboidratos', 'https://example.com/barra_cereal.jpg'),
       ('Uva-passa', 'Pequena e doce, fornece energia rápida', 'https://example.com/uva_passa.jpg'),
       ('Bolo de cenoura caseiro', 'Rico em fibras e vitaminas', 'https://example.com/bolo_cenoura.jpg'),
       ('Batata-doce cozida', 'Fonte de carboidrato de baixo índice glicêmico', 'https://example.com/batata_doce.jpg'),
       ('Pipoca', 'Fonte de fibras e antioxidantes', 'https://example.com/pipoca.jpg'),
       ('Milho verde', 'Rico em carboidratos e fibras', 'https://example.com/milho_verde.jpg');

-- Inserindo dados na tabela de Snacks
INSERT INTO tbSnacks (nome, descricao, imagem_url)
VALUES ('Bolinhas de queijo assadas', 'Pequenas e saborosas, fornecem proteínas e cálcio', 'https://example.com/bolinhas_queijo.jpg'),
       ('Palitos de cenoura e pepino', 'Crocantes e frescos, perfeitos com homus', 'https://example.com/palitos_vegetais.jpg'),
       ('Mix de frutas secas', 'Uvas-passas, damascos e maçã desidratada', 'https://example.com/mix_frutas_secas.jpg'),
       ('Chips de batata-doce', 'Crocantes e saudáveis', 'https://example.com/chips_batata_doce.jpg'),
       ('Torradinhas integrais', 'Crocantes e ricas em fibras', 'https://example.com/torradinhas_integral.jpg'),
       ('Frutas frescas em pedaços', 'Cubos de melancia, maçã e kiwi', 'https://example.com/frutas_frescas.jpg'),
       ('Minipanquecas de aveia', 'Pequenas e fáceis de carregar', 'https://example.com/minipanqueca.jpg'),
       ('Biscoito de arroz', 'Leve e crocante, perfeito para pastas e queijos', 'https://example.com/biscoito_arroz.jpg'),
       ('Iogurte grego com mel', 'Leve e com toque doce, fornece cálcio e proteínas', 'https://example.com/iogurte_grego.jpg'),
       ('Pão de queijo integral', 'Uma versão mais saudável do pão de queijo', 'https://example.com/pao_queijo_integral.jpg');

-- Visualizar os registros das tabelas
SELECT * FROM tbConstrutores;
SELECT * FROM tbReguladores;
SELECT * FROM tbEnergeticos;
SELECT * FROM tbSnacks;
