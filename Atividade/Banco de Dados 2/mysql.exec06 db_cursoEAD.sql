-- ATIVIDADE 06 - CURSOS ONLINE (EAD)

-- Criar o banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Usar o banco de dados
USE db_curso_da_minha_vida;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    area VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Criar a tabela tb_cursos
CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    instrutor VARCHAR(100) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, area, descricao) VALUES
('Programação', 'Tecnologia', 'Cursos de desenvolvimento e programação'),
('Design', 'Criatividade', 'Cursos de design gráfico e UX/UI'),
('Marketing', 'Negócios', 'Cursos de marketing digital e estratégias'),
('Idiomas', 'Comunicação', 'Cursos de línguas estrangeiras'),
('Gestão', 'Administração', 'Cursos de gestão e liderança');

-- Inserir 8 registros na tabela tb_cursos
INSERT INTO tb_cursos (nome, instrutor, valor, carga_horaria, categoria_id) VALUES
('Java Completo', 'Carlos Silva', 850.00, 80, 1),
('Python para Data Science', 'Ana Santos', 920.00, 100, 1),
('UI/UX Design Avançado', 'Mariana Costa', 680.00, 60, 2),
('Marketing Digital Completo', 'João Pereira', 750.00, 70, 3),
('JavaScript Moderno', 'Pedro Oliveira', 420.00, 50, 1),
('Inglês Avançado', 'Sarah Johnson', 890.00, 120, 4),
('Gestão de Projetos Ágeis', 'Roberto Lima', 640.00, 55, 5),
('Photoshop Profissional', 'Lucas Martins', 480.00, 45, 2);

-- 6. SELECT dos cursos com valor maior que R$ 500,00
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- 7. SELECT dos cursos com valor entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

-- 8. SELECT usando LIKE para buscar cursos com a letra J no nome
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- 9. SELECT com INNER JOIN unindo tb_cursos e tb_categorias
SELECT 
    tb_cursos.id,
    tb_cursos.nome AS curso,
    tb_cursos.instrutor,
    tb_cursos.valor,
    tb_cursos.carga_horaria,
    tb_categorias.nome AS categoria,
    tb_categorias.area
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

-- 10. SELECT com INNER JOIN trazendo apenas cursos da categoria Java (Programação)
SELECT 
    tb_cursos.id,
    tb_cursos.nome AS curso,
    tb_cursos.instrutor,
    tb_cursos.valor,
    tb_cursos.carga_horaria,
    tb_categorias.nome AS categoria,
    tb_categorias.area
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Programação' AND tb_cursos.nome LIKE '%Java%';