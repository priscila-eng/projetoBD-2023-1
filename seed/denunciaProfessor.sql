CREATE TABLE `DenunciaProfessor` (
  `idDenunciaProfessor` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(120) NOT NULL,
  `status` tinyint NOT NULL,
  `codAvaliacaoProfessorDenuncia` int NOT NULL,
  `codUsuarioDenunciaProfessor` int NOT NULL,
  PRIMARY KEY (`idDenunciaProfessor`),
  UNIQUE KEY `idDenunciaProfessor_UNIQUE` (`idDenunciaProfessor`),
  KEY `fk_AvaliacaoDenunciaProfessor_1_idx` (`codAvaliacaoProfessorDenuncia`),
  KEY `fk_DenunciaProfessor_1_idx` (`codUsuarioDenunciaProfessor`),
  CONSTRAINT `fk_AvaliacaoDenunciaProfessor_1` FOREIGN KEY (`codAvaliacaoProfessorDenuncia`) REFERENCES `AvaliacaoProfessor` (`idAvaliacaoProfessor`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_DenunciaProfessor_2` FOREIGN KEY (`codUsuarioDenunciaProfessor`) REFERENCES `Usuario` (`idUsuario`)
);

INSERT INTO DenunciaProfessor(comentario,status,codAvaliacaoProfessorDenuncia,codUsuarioDenunciaProfessor) VALUES ('Comentario ofensivo',false,1,1);
INSERT INTO DenunciaProfessor(comentario,status,codAvaliacaoProfessorDenuncia,codUsuarioDenunciaProfessor) VALUES ('Comentario ofensivo',false,2,2);
INSERT INTO DenunciaProfessor(comentario,status,codAvaliacaoProfessorDenuncia,codUsuarioDenunciaProfessor) VALUES ('Comentario ofensivo',false,3,3);