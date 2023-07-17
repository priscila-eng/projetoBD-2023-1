CREATE TABLE `DenunciaTurma` (
  `idDenunciaTurma` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(120) NOT NULL,
  `status` tinyint NOT NULL,
  `codDenunciaTurmaAvaliacao` int NOT NULL,
  `codUsuarioDenunciaTurma` int NOT NULL,
  PRIMARY KEY (`idDenunciaTurma`),
  UNIQUE KEY `idDenunciaTurma_UNIQUE` (`idDenunciaTurma`),
  KEY `fk_DenunciaTurmaAvaliacao_1_idx` (`codDenunciaTurmaAvaliacao`),
  KEY `fk_DenunciaTurma_2_idx` (`codUsuarioDenunciaTurma`),
  CONSTRAINT `fk_DenunciaTurma_1` FOREIGN KEY (`codDenunciaTurmaAvaliacao`) REFERENCES `AvaliacaoTurma` (`idAvaliacaoTurma`) ON DELETE CASCADE,
  CONSTRAINT `fk_DenunciaTurma_2` FOREIGN KEY (`codUsuarioDenunciaTurma`) REFERENCES `Usuario` (`idUsuario`) ON DELETE CASCADE
);
INSERT INTO DenunciaTurma(comentario,status,codDenunciaTurmaAvaliacao,codUsuarioDenunciaTurma) VALUES ('Comentario ofensivo',false,1,1);
INSERT INTO DenunciaTurma(comentario,status,codDenunciaTurmaAvaliacao,codUsuarioDenunciaTurma) VALUES ('Comentario ofensivo',false,2,2);
INSERT INTO DenunciaTurma(comentario,status,codDenunciaTurmaAvaliacao,codUsuarioDenunciaTurma) VALUES ('Comentario ofensivo',false,3,3);