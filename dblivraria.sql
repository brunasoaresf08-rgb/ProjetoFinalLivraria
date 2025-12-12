-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           12.1.2-MariaDB - MariaDB Server
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela dblivraria.avaliacoes: ~6 rows (aproximadamente)
INSERT INTO `avaliacoes` (`id`, `usuario_id`, `livro_id`, `nota`, `comentario`, `data_avaliacao`) VALUES
	(1, 1, 1, 5.0, 'Explicações claras e muito bons exercícios para iniciantes.', '2025-12-05 19:31:39'),
	(2, 2, 1, 4.5, 'Material didático excelente, ajudou muito a entender Python.', '2025-12-05 19:31:39'),
	(3, 3, 2, 4.0, 'Conteúdo técnico sólido, fundamental para quem estuda metalurgia.', '2025-12-05 19:31:39'),
	(4, 1, 4, 5.0, 'Ótima didática, ideal para reforçar conceitos de álgebra.', '2025-12-05 19:31:39'),
	(5, 2, 3, 3.5, 'O conteúdo é bom, mas alguns capítulos são mais densos.', '2025-12-05 19:31:39'),
	(6, 3, 5, 4.8, 'Excelente introdução ao mundo da computação, muito completo.', '2025-12-05 19:31:39');

-- Copiando dados para a tabela dblivraria.livros: ~5 rows (aproximadamente)
INSERT INTO `livros` (`id`, `titulo`, `autor`, `genero`, `editora`, `idioma`, `sinopse`, `ativo`, `criado_em`, `atualizado_em`) VALUES
	(1, 'Introdução à Programação com Python', 'Nilo Ney Coutinho Menezes', 'Tecnologia / Programação', 'Novatec', 'Português', 'Guia prático para iniciantes aprenderem lógica e programação usando Python, com exemplos simples e exercícios.', 1, '2025-12-05 19:27:24', '2025-12-05 19:27:24'),
	(2, 'Fundamentos de Metalurgia Física', 'William D. Callister', 'Engenharia / Metalurgia', 'LTC', 'Português', 'Apresenta conceitos essenciais de metalurgia, estrutura dos materiais, propriedades mecânicas e processos de fabricação.', 1, '2025-12-05 19:27:24', '2025-12-05 19:27:24'),
	(3, 'Química: A Ciência Central', 'Theodore L. Brown, H. Eugene LeMay, Bruce Bursten', 'Química / Ensino Médio e Superior', 'Pearson', 'Português', 'Explica os princípios fundamentais da química com diagramas e exercícios, ideal para estudos escolares e universitários.', 1, '2025-12-05 19:27:24', '2025-12-05 19:27:24'),
	(4, 'Matemática Essencial – Álgebra', 'Charles P. McKeague', 'Matemática / Escolar', 'Cengage', 'Português', 'Introdução acessível a conceitos de álgebra, incluindo equações, gráficos e funções, com exemplos claros.', 1, '2025-12-05 19:27:24', '2025-12-05 19:27:24'),
	(5, 'Introdução à Ciência da Computação', 'J. Glenn Brookshear', 'Tecnologia / Computação', 'Pearson', 'Português', 'Visão geral da área de computação: hardware, software, redes, algoritmos e impacto tecnológico.', 1, '2025-12-05 19:27:24', '2025-12-05 19:27:24');

-- Copiando dados para a tabela dblivraria.reservas: ~5 rows (aproximadamente)
INSERT INTO `reservas` (`id`, `usuario_id`, `livro_id`, `data_emissao`, `data_vencimento`, `ativo`, `criado_em`, `atualizado_em`) VALUES
	(1, 1, 1, '2025-12-05', '2025-12-12', 1, '2025-12-05 19:34:52', '2025-12-05 19:34:52'),
	(2, 2, 3, '2025-12-05', '2025-12-15', 1, '2025-12-05 19:34:52', '2025-12-05 19:34:52'),
	(3, 3, 5, '2025-12-05', '2025-12-10', 1, '2025-12-05 19:34:52', '2025-12-05 19:34:52'),
	(4, 1, 4, '2025-12-05', '2025-12-13', 1, '2025-12-05 19:34:52', '2025-12-05 19:34:52'),
	(5, 2, 2, '2025-12-05', '2025-12-11', 1, '2025-12-05 19:34:52', '2025-12-05 19:34:52');

-- Copiando dados para a tabela dblivraria.usuarios: ~7 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `curso`, `perfil`) VALUES
	(1, 'Vitor Lima', 'vitor.lima@email.com', '1234', 'Desenvolvimento de Sistemas', 'Aluno'),
	(2, 'Pedro Campos', 'pedro.campos@email.com', 'abcd', 'Administração', 'Aluno'),
	(3, 'Lucas Gabriel', 'lucas.gabriel@email.com', 'senha123', 'Informática', 'Aluno'),
	(4, 'Bruna Soares teste', 'bruna@gmail.com', '1234', 'Desenvolvimento de Sistemas', 'Aluno'),
	(6, 'Bruna Soares teste', 'bruna1@gmail.com', '1234', 'Desenvolvimento de Sistemas', 'Aluno'),
	(7, 'Bruna Soares teste', 'bruna11@gmail.com', '1234', 'Desenvolvimento de Sistemas', 'Aluno'),
	(9, 'Anna Beatriz', 'anna1@gmail.com', '1234', 'Desenvolvimento de Sistemas', 'Aluno');

-- Copiando dados para a tabela dblivraria.usuario_admin: ~1 rows (aproximadamente)
INSERT INTO `usuario_admin` (`id`, `nome`, `email`, `senha`, `perfil`) VALUES
	(1, 'Bruna Soares', 'bruna.soares@email.com', '1234', 'Admin'),
	(2, 'Stephanie Paixão', 'stephanie.paixao@gmail.com', 'abcd', 'Admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
