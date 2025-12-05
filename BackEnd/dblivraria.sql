

CREATE DATABASE IF NOT EXISTS dblivraria;
USE dblivraria;

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  senha VARCHAR(100) NOT NULL,
  curso VARCHAR(100) NOT NULL,
  perfil ENUM('Aluno', 'Admin') DEFAULT 'Aluno'
);

INSERT INTO usuarios (nome, email, senha, perfil, curso) VALUES
('Vitor Lima', 'vitor.lima@email.com', '1234', 'Aluno', 'Desenvolvimento de Sistemas'),
('Pedro Campos', 'pedro.campos@email.com', 'abcd', 'Aluno', 'Administração'),
('Lucas Gabriel', 'lucas.gabriel@email.com', 'senha123', 'Aluno', 'Informática');

CREATE TABLE usuario_admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  senha VARCHAR(100) NOT NULL,
  perfil ENUM('Aluno', 'Admin') DEFAULT 'Admin'
);

INSERT INTO usuario_admin (nome, email, senha, perfil) VALUES
('Bruna Soares', 'bruna.soares@email.com', '1234', 'Admin'),
('Stephanie Paixão', 'stephanie.paixao@gmail.com', 'abcd', 'Admin');

CREATE TABLE IF NOT EXISTS livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    genero VARCHAR(100),
    editora VARCHAR(100),
    idioma VARCHAR(50) DEFAULT 'Português',
    sinopse TEXT,
    ativo BOOLEAN DEFAULT TRUE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO livros (titulo, autor, genero, editora, idioma, sinopse) VALUES
('Introdução à Programação com Python', 'Nilo Ney Coutinho Menezes', 'Tecnologia / Programação', 'Novatec', 'Português',
 'Guia prático para iniciantes aprenderem lógica e programação usando Python, com exemplos simples e exercícios.'),

('Fundamentos de Metalurgia Física', 'William D. Callister', 'Engenharia / Metalurgia', 'LTC', 'Português',
 'Apresenta conceitos essenciais de metalurgia, estrutura dos materiais, propriedades mecânicas e processos de fabricação.'),

('Química: A Ciência Central', 'Theodore L. Brown, H. Eugene LeMay, Bruce Bursten', 'Química / Ensino Médio e Superior', 'Pearson', 'Português',
 'Explica os princípios fundamentais da química com diagramas e exercícios, ideal para estudos escolares e universitários.'),

('Matemática Essencial – Álgebra', 'Charles P. McKeague', 'Matemática / Escolar', 'Cengage', 'Português',
 'Introdução acessível a conceitos de álgebra, incluindo equações, gráficos e funções, com exemplos claros.'),

('Introdução à Ciência da Computação', 'J. Glenn Brookshear', 'Tecnologia / Computação', 'Pearson', 'Português',
 'Visão geral da área de computação: hardware, software, redes, algoritmos e impacto tecnológico.');

 CREATE TABLE IF NOT EXISTS avaliacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    livro_id INT NOT NULL,
    nota DECIMAL(2,1) CHECK (nota >= 0 AND nota <= 5),
    comentario TEXT,
    data_avaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (livro_id) REFERENCES livros(id) ON DELETE CASCADE
);

INSERT INTO avaliacoes (usuario_id, livro_id, nota, comentario)
VALUES
(1, 1, 5.0, 'Explicações claras e muito bons exercícios para iniciantes.'),
(2, 1, 4.5, 'Material didático excelente, ajudou muito a entender Python.'),
(3, 2, 4.0, 'Conteúdo técnico sólido, fundamental para quem estuda metalurgia.'),
(1, 4, 5.0, 'Ótima didática, ideal para reforçar conceitos de álgebra.'),
(2, 3, 3.5, 'O conteúdo é bom, mas alguns capítulos são mais densos.'),
(3, 5, 4.8, 'Excelente introdução ao mundo da computação, muito completo.');

CREATE TABLE IF NOT EXISTS reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    livro_id INT NOT NULL,
    data_emissao DATE DEFAULT (CURRENT_DATE),
    data_vencimento DATE NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO reservas (usuario_id, livro_id, data_vencimento, ativo)
VALUES
(1, 1, DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), TRUE),  
(2, 3, DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY), TRUE),
(3, 5, DATE_ADD(CURRENT_DATE, INTERVAL 5 DAY), TRUE),   
(1, 4, DATE_ADD(CURRENT_DATE, INTERVAL 8 DAY), TRUE),   
(2, 2, DATE_ADD(CURRENT_DATE, INTERVAL 6 DAY), TRUE); 
