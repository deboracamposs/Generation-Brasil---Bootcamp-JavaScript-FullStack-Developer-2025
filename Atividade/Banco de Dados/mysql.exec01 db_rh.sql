-- ========================================
-- ATIVIDADE 01 - SISTEMA DE RH
-- ========================================

-- 1. Criação do banco de dados.
CREATE DATABASE db_rh;
USE db_rh;

-- 2. Criação da tabela de colaboradores com 5 atributos relevantes.
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    data_admissao DATE NOT NULL
);

-- 3. Inserção de no mínimo 5 registros.
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao) VALUES
('Ana Silva Santos', 'Analista de TI', 3500.00, 'Tecnologia', '2022-03-15'),
('Carlos Eduardo Souza', 'Assistente Administrativo', 1800.00, 'Administrativo', '2023-01-10'),
('Maria Fernanda Costa', 'Gerente de Vendas', 5500.00, 'Comercial', '2021-06-20'),
('João Pedro Oliveira', 'Auxiliar de Logística', 1500.00, 'Logística', '2023-08-05'),
('Juliana Almeida Lima', 'Coordenadora de RH', 4200.00, 'Recursos Humanos', '2020-11-12'),
('Roberto Carlos Mendes', 'Desenvolvedor Pleno', 4800.00, 'Tecnologia', '2022-09-01'),
('Patricia Gonçalves', 'Recepcionista', 1600.00, 'Administrativo', '2023-05-18');

-- 4. SELECT de colaboradores com salário > 2000.
SELECT * FROM tb_colaboradores 
WHERE salario > 2000;

-- 5. SELECT de colaboradores com salário < 2000
SELECT * FROM tb_colaboradores 
WHERE salario < 2000;

-- 6. Atualização de um registro
UPDATE tb_colaboradores 
SET salario = 2000.00 
WHERE id = 4;

-- Visualização completa da tabela --
SELECT * FROM tb_colaboradores;