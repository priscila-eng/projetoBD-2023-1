CREATE TABLE `DenunciaTurma` (
  `idDenunciaTurma` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(120) NOT NULL,
  `status` tinyint NOT NULL,
  `codDenunciaTurmaAvaliacao` int NOT NULL,
  PRIMARY KEY (`idDenunciaTurma`),
  UNIQUE KEY `idDenunciaTurma_UNIQUE` (`idDenunciaTurma`),
  KEY `fk_DenunciaTurmaAvaliacao_1_idx` (`codDenunciaTurmaAvaliacao`),
  CONSTRAINT `fk_DenunciaTurma_1` FOREIGN KEY (`codDenunciaTurmaAvaliacao`) REFERENCES `AvaliacaoTurma` (`idAvaliacaoTurma`) ON DELETE CASCADE
)
INSERT INTO DenunciaTurma(comentario,status,codDenunciaTurmaAvaliacao) VALUES ('Comentario ofensivo',false,1);
INSERT INTO DenunciaTurma(comentario,status,codDenunciaTurmaAvaliacao) VALUES ('Comentario ofensivo',false,2);
INSERT INTO DenunciaTurma(comentario,status,codDenunciaTurmaAvaliacao) VALUES ('Comentario ofensivo',false,3);