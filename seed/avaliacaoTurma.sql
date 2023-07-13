CREATE TABLE `AvaliacaoTurma` (
  `idAvaliacaoTurma` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(120) DEFAULT NULL,
  `classificacao` int NOT NULL,
  `codTurmaAvaliada` int NOT NULL,
  `codUsuarioAvaliacao` int NOT NULL,
  PRIMARY KEY (`idAvaliacaoTurma`),
  UNIQUE KEY `idAvaliacaoTurma_UNIQUE` (`idAvaliacaoTurma`),
  KEY `fk_TurmaAvaliacaoTurma_1_idx` (`codTurmaAvaliada`),
  KEY `fk_UsuarioAvaliacaoTurma_2_idx` (`codUsuarioAvaliacao`),
  CONSTRAINT `fk_TurmaAvaliacaoTurma_1` FOREIGN KEY (`codTurmaAvaliada`) REFERENCES `Turma` (`idTurma`) ON DELETE CASCADE,
  CONSTRAINT `fk_UsuarioAvaliacaoTurma_2` FOREIGN KEY (`codUsuarioAvaliacao`) REFERENCES `Usuario` (`idUsuario`) ON DELETE CASCADE
)

INSERT INTO AvaliacaoTurma(comentario,classificacao,codTurmaAvaliada,codUsuarioAvaliacao) VALUES ('Disciplina muito boa',5,1,1);
INSERT INTO AvaliacaoTurma(comentario,classificacao,codTurmaAvaliada,codUsuarioAvaliacao) VALUES ('Disciplina muito puxada',3,2,2);
INSERT INTO AvaliacaoTurma(classificacao,codTurmaAvaliada,codUsuarioAvaliacao) VALUES (5,3,3);