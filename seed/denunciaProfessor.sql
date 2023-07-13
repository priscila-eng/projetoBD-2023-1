CREATE TABLE `DenunciaProfessor` (
  `idDenunciaProfessor` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(120) NOT NULL,
  `status` tinyint NOT NULL,
  `codAvaliacaoProfessorDenuncia` int NOT NULL,
  PRIMARY KEY (`idDenunciaProfessor`),
  UNIQUE KEY `idDenunciaProfessor_UNIQUE` (`idDenunciaProfessor`),
  KEY `fk_AvaliacaoDenunciaProfessor_1_idx` (`codAvaliacaoProfessorDenuncia`),
  CONSTRAINT `fk_AvaliacaoDenunciaProfessor_1` FOREIGN KEY (`codAvaliacaoProfessorDenuncia`) REFERENCES `AvaliacaoProfessor` (`idAvaliacaoProfessor`) ON DELETE CASCADE ON UPDATE RESTRICT
)

INSERT INTO DenunciaProfessor(comentario,status,codAvaliacaoProfessorDenuncia) VALUES ('Comentario ofensivo',false,1);
INSERT INTO DenunciaProfessor(comentario,status,codAvaliacaoProfessorDenuncia) VALUES ('Comentario ofensivo',false,2);
INSERT INTO DenunciaProfessor(comentario,status,codAvaliacaoProfessorDenuncia) VALUES ('Comentario ofensivo',false,3);