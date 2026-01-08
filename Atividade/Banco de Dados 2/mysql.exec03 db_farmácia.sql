-- ATIVIDADE 03 - FARMÁCIA

-- Criar o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Usar o banco de dados
USE db_farmacia_bem_estar;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Criar a tabela tb_produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, setor, descricao) VALUES
('Medicamentos', 'Farmacêutico', 'Produtos farmacêuticos e medicamentos'),
('Cosméticos', 'Beleza', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Higiene Pessoal', 'Produtos de higiene e limpeza pessoal'),
('Vitaminas', 'Suplementos', 'Vitaminas e suplementos alimentares'),
('Dermatológicos', 'Dermocosméticos', 'Produtos para cuidados com a pele');

-- Inserir 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, valor, estoque, categoria_id) VALUES
('Paracetamol 750mg', 'Analgésico e antitérmico com 20 comprimidos', 12.50, 150, 1),
('Dipirona 500mg', 'Analgésico e antitérmico com 10 comprimidos', 8.90, 200, 1),
('Shampoo Anticaspa', 'Shampoo para tratamento de caspa 200ml', 35.00, 80, 2),
('Creme Facial Hidratante', 'Creme hidratante facial com FPS 30', 68.00, 45, 5),
('Vitamina C 1000mg', 'Suplemento de vitamina C com 60 cápsulas', 45.00, 90, 4),
('Protetor Solar FPS 50', 'Protetor solar facial e corporal 120ml', 55.00, 60, 5),
('Sabonete Líquido', 'Sabonete líquido hidratante 250ml', 18.00, 120, 3),
('Complexo B', 'Vitaminas do complexo B com 30 comprimidos', 38.00, 75, 4);

-- 6. SELECT dos produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- 7. SELECT dos produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- 8. SELECT usando LIKE para buscar produtos com a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 9. SELECT com INNER JOIN unindo tb_produtos e tb_categorias
SELECT 
    tb_produtos.id,
    tb_produtos.nome AS produto,
    tb_produtos.descricao,
    tb_produtos.valor,
    tb_produtos.estoque,
    tb_categorias.nome AS categoria,
    tb_categorias.setor
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- 10. SELECT com INNER JOIN trazendo apenas produtos da categoria Cosméticos
SELECT 
    tb_produtos.id,
    tb_produtos.nome AS produto,
    tb_produtos.descricao,
    tb_produtos.valor,
    tb_produtos.estoque,
    tb_categorias.nome AS categoria,
    tb_categorias.setor
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';