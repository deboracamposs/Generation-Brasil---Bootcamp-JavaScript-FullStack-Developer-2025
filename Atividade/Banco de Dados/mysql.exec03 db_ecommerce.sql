-- ========================================
-- ATIVIDADE 02 - SISTEMA DE E-COMMERCE
-- ========================================

-- 1. Criação do banco de dados.
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- 2. Criação da tabela de produtos com 5 atributos relevantes.
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    quantidade INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
	tipo VARCHAR(20) NOT NULL
);

-- 3. Insirir nesta tabela no mínimo 8 registros.
INSERT INTO tb_produtos (nome, quantidade, valor, descricao, tipo) VALUES
('Violão nylon', 20, 299.90, 'Violão com cordas de nylon', 'cordas'),
('Guitarra', 15, 699.90, 'Guitarra elétrica 6 cordas','cordas'),
('Baixo', 20, 599.90, 'Baixao com 4 cordas', 'cordas'),
('Bateria eletrônica', 10, 1999.90, 'Com 10 pads eletrônicos', 'percussão'),
('Pandeiro', 20, 70,'Pandeiro azul', 'percussão'),
('Palhetas', 200, 6, 'Espessuras variadas', 'acessório'),
('Correia', 200, 79.90, 'Correias para guitarra e violão', 'acessório'),
('Violão aço', 20, 399.90, 'Violão com cordas de aço', 'cordas');

-- 4. SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos
WHERE valor > 500;

-- 5. SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos
WHERE valor < 500;

-- 6. Registro atualizado através de uma query de atualização para 2 produtos.
UPDATE tb_produtos
SET valor = 429.90
WHERE id = 8;

UPDATE tb_produtos
SET valor = 89.90
WHERE id = 5;

-- Visualização completa da tabela com os valores alterados --
SELECT * FROM tb_produtos






