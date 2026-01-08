-- ATIVIDADE 01 - GAME ONLINE

-- Criar o banco de dados
CREATE DATABASE db_generation_game_online;

-- Usar o banco de dados
USE db_generation_game_online;

-- Criar a tabela tb_classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    habilidade_especial VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Criar a tabela tb_personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserir 5 registros na tabela tb_classes
INSERT INTO tb_classes (nome, habilidade_especial, descricao) VALUES
('Guerreiro', 'Fúria de Batalha', 'Especialista em combate corpo a corpo com alta resistência'),
('Mago', 'Explosão Arcana', 'Domina magias poderosas e feitiços elementais'),
('Arqueiro', 'Tiro Certeiro', 'Ataca à distância com precisão mortal'),
('Assassino', 'Golpe nas Sombras', 'Mestre em ataques furtivos e críticos'),
('Paladino', 'Luz Divina', 'Combatente sagrado com poderes de cura');

-- Inserir 8 registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Arthas', 2500, 1800, 45, 1),
('Gandalf', 3000, 1200, 50, 2),
('Legolas', 2200, 1500, 42, 3),
('Ezio', 2800, 1000, 48, 4),
('Uther', 2100, 2200, 40, 5),
('Conan', 2600, 1900, 44, 1),
('Merlin', 3200, 1100, 52, 2),
('Robin Hood', 1800, 1400, 38, 3);

-- 6. SELECT dos personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- 7. SELECT dos personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- 8. SELECT usando LIKE para buscar personagens com a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- 9. SELECT com INNER JOIN unindo tb_personagens e tb_classes
SELECT 
    tb_personagens.id,
    tb_personagens.nome AS personagem,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_personagens.nivel,
    tb_classes.nome AS classe,
    tb_classes.habilidade_especial
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- 10. SELECT com INNER JOIN trazendo apenas personagens da classe Arqueiro
SELECT 
    tb_personagens.id,
    tb_personagens.nome AS personagem,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_personagens.nivel,
    tb_classes.nome AS classe,
    tb_classes.habilidade_especial
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';