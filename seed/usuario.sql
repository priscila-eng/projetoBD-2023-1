CREATE TABLE `Usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0',
  `curso` varchar(100) NOT NULL,
  `matricula` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  UNIQUE KEY `matrícula_UNIQUE` (`matricula`)
) 

INSERT INTO Usuario(nome,email,senha,is_admin,curso,matricula) VALUES ('Priscila Silva', 'priscila@gmail.com', '12345678', true, 'Engenharia da Computacao', 12345678);
INSERT INTO Usuario(nome,email,senha,is_admin,curso,matricula) VALUES ('Victor Silva', 'victor@gmail.com', '12345678', false, 'Ciência da Computacao', 87654321);
INSERT INTO Usuario(nome,email,senha,is_admin,curso,matricula) VALUES ('Heitor Silva', 'heitor@gmail.com', '12345678', false, 'Ciência da Computacao', 14253687);