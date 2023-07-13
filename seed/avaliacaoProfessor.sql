CREATE TABLE `AvaliacaoProfessor` (
  `idAvaliacaoProfessor` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(120) DEFAULT NULL,
  `classificacao` int NOT NULL,
  `codProfessorAvaliado` int NOT NULL,
  `codUsuarioAvaliacao` int NOT NULL,
  PRIMARY KEY (`idAvaliacaoProfessor`),
  UNIQUE KEY `idAvaliacaoProfessor_UNIQUE` (`idAvaliacaoProfessor`),
  KEY `fk_id_professor_idx` (`codProfessorAvaliado`),
  KEY `fk_id_usuario_idx` (`codUsuarioAvaliacao`),
  CONSTRAINT `fk_AvaliacaoProfessor_1` FOREIGN KEY (`codProfessorAvaliado`) REFERENCES `Professor` (`idProfessor`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_AvaliacaoProfessor_2` FOREIGN KEY (`codUsuarioAvaliacao`) REFERENCES `Usuario` (`idUsuario`) ON DELETE CASCADE
)

INSERT INTO AvaliacaoProfessor(comentario,classificacao,codProfessorAvaliado,codUsuarioAvaliacao) VALUES ('Professor é ótimo',5,1,1);
INSERT INTO AvaliacaoProfessor(comentario,classificacao,codProfessorAvaliado,codUsuarioAvaliacao) VALUES ('Professor é médio',3,2,2);
INSERT INTO AvaliacaoProfessor(classificacao,codProfessorAvaliado,codUsuarioAvaliacao) VALUES (5,3,3);