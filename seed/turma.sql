CREATE TABLE `Turma` (
  `idTurma` int NOT NULL AUTO_INCREMENT,
  `numeroTurma` varchar(3) NOT NULL,
  `periodo` varchar(20) NOT NULL,
  `codDisciplinaTurma` varchar(20) NOT NULL,
  `codProfessorTurma` int NOT NULL,
  PRIMARY KEY (`idTurma`),
  UNIQUE KEY `idTurma_UNIQUE` (`idTurma`),
  KEY `fk_TurmaProfessor_2_idx` (`codProfessorTurma`),
  KEY `fk_TurmaDisciplina_1_idx` (`codDisciplinaTurma`),
  CONSTRAINT `fk_TurmaDisciplina_1` FOREIGN KEY (`codDisciplinaTurma`) REFERENCES `Disciplina` (`idDisciplina`) ON DELETE CASCADE,
  CONSTRAINT `fk_TurmaProfessor_2` FOREIGN KEY (`codProfessorTurma`) REFERENCES `Professor` (`idProfessor`) ON DELETE CASCADE
)

INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDT1101','1',20221,(SELECT idProfessor from Professor where nome = 'TANIA CRISTINA DA SILVA CRUZ (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDT1101','1',20221,(SELECT idProfessor from Professor where nome = 'JONATHAS FELIPE AIRES FERREIRA (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0004','1',20221,(SELECT idProfessor from Professor where nome = 'LAURA ANGELICA FERREIRA DARNET (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0007','1',20221,(SELECT idProfessor from Professor where nome = 'MAURO GUILHERME MAIDANA CAPPELLARO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0007','2',20221,(SELECT idProfessor from Professor where nome = 'MAURO GUILHERME MAIDANA CAPPELLARO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0007','4',20221,(SELECT idProfessor from Professor where nome = 'CRISTIANE GOMES BARRETO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0007','5',20221,(SELECT idProfessor from Professor where nome = 'LAURA ANGELICA FERREIRA DARNET (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0008','1',20221,(SELECT idProfessor from Professor where nome = 'DORIS ALEIDA VILLAMIZAR SAYAGO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0010','1',20221,(SELECT idProfessor from Professor where nome = 'ANA KARINE PEREIRA (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0010','2',20221,(SELECT idProfessor from Professor where nome = 'ANA KARINE PEREIRA (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0011','1',20221,(SELECT idProfessor from Professor where nome = 'FREDERIC ADELIN GEORGES MERTENS (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0012','1',20221,(SELECT idProfessor from Professor where nome = 'ANA KARINE PEREIRA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0013','1',20221,(SELECT idProfessor from Professor where nome = 'STEPHANIE CAROLINE NASUTI (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0015','1',20221,(SELECT idProfessor from Professor where nome = 'SAULO RODRIGUES PEREIRA FILHO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CDS0019','1',20221,(SELECT idProfessor from Professor where nome = 'MAURICIO DE CARVALHO AMAZONAS (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0001','1',20221,(SELECT idProfessor from Professor where nome = 'MARIANA TOMAZIN (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0002','1',20221,(SELECT idProfessor from Professor where nome = 'AYLANA LAISSA MEDEIROS BORGES (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0005','1',20221,(SELECT idProfessor from Professor where nome = 'MARIANA TOMAZIN (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0006','1',20221,(SELECT idProfessor from Professor where nome = 'JEFFERSON LORENCINI GAZONI (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0007','1',20221,(SELECT idProfessor from Professor where nome = 'MARUTSCHKA MARTINI MOESCH (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0012','1',20221,(SELECT idProfessor from Professor where nome = 'ALESSANDRA SANTOS DOS SANTOS (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0012','1',20221,(SELECT idProfessor from Professor where nome = 'CAROLINA MENEZES PALHARES (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0013','1',20221,(SELECT idProfessor from Professor where nome = 'MARUTSCHKA MARTINI MOESCH (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0014','1',20221,(SELECT idProfessor from Professor where nome = 'FAGNO TAVARES DE OLIVEIRA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0015','1',20221,(SELECT idProfessor from Professor where nome = 'MARIANA TOMAZIN (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0022','1',20221,(SELECT idProfessor from Professor where nome = 'JOAO PAULO FARIA TASSO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0032','1',20221,(SELECT idProfessor from Professor where nome = 'AYLANA LAISSA MEDEIROS BORGES (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0036','1',20221,(SELECT idProfessor from Professor where nome = 'NEUZA DE FARIAS ARAUJO (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0037','1',20221,(SELECT idProfessor from Professor where nome = 'NEUZA DE FARIAS ARAUJO (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0038','1',20221,(SELECT idProfessor from Professor where nome = 'THIAGO SEBASTIANO DE MELO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0039','1',20221,(SELECT idProfessor from Professor where nome = 'JOAO PAULO FARIA TASSO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0040','1',20221,(SELECT idProfessor from Professor where nome = 'FAGNO TAVARES DE OLIVEIRA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0041','1',20221,(SELECT idProfessor from Professor where nome = 'ANGELA TEBERGA DE PAULA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0041','1',20221,(SELECT idProfessor from Professor where nome = 'LANA MAGALY PIRES (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0042','1',20221,(SELECT idProfessor from Professor where nome = 'NEUZA DE FARIAS ARAUJO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0043','1',20221,(SELECT idProfessor from Professor where nome = 'MARIANA TOMAZIN (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0044','1',20221,(SELECT idProfessor from Professor where nome = 'ANA ROSA DOMINGUES DOS SANTOS (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0045','1',20221,(SELECT idProfessor from Professor where nome = 'LUIZ CARLOS SPILLER PENA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0046','1',20221,(SELECT idProfessor from Professor where nome = 'EUZAMARA DE CARVALHO (15h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0046','1',20221,(SELECT idProfessor from Professor where nome = 'THIAGO SEBASTIANO DE MELO (15h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0050','1',20221,(SELECT idProfessor from Professor where nome = 'ANGELA TEBERGA DE PAULA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0051','1',20221,(SELECT idProfessor from Professor where nome = 'THIAGO SEBASTIANO DE MELO (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0052','1',20221,(SELECT idProfessor from Professor where nome = 'ANGELA TEBERGA DE PAULA (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0053','1',20221,(SELECT idProfessor from Professor where nome = 'AYLANA LAISSA MEDEIROS BORGES (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0054','1',20221,(SELECT idProfessor from Professor where nome = 'ANA ROSA DOMINGUES DOS SANTOS (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CET0055','1',20221,(SELECT idProfessor from Professor where nome = 'THIAGO SEBASTIANO DE MELO (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0005','1',20221,(SELECT idProfessor from Professor where nome = 'LUIZ FERNANDO MACEDO BESSA (5h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0005','1',20221,(SELECT idProfessor from Professor where nome = 'JOÃO LUIZ HOMEM DE CARVALHO (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0007','1',20221,(SELECT idProfessor from Professor where nome = 'MARIO LIMA BRASIL (5h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0007','1',20221,(SELECT idProfessor from Professor where nome = 'HILTON PEREIRA DA SILVA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0007','1',20221,(SELECT idProfessor from Professor where nome = 'CELIA KINUKO MATSUNAGA HIGAWA (15h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0007','1',20221,(SELECT idProfessor from Professor where nome = 'MARISA COBBE MAASS (15h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0008','1',20221,(SELECT idProfessor from Professor where nome = 'MANOEL PEREIRA DE ANDRADE (5h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0008','1',20221,(SELECT idProfessor from Professor where nome = 'FELÍCIO DE ARAÚJO PONTES JUNIOR (5h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0008','1',20221,(SELECT idProfessor from Professor where nome = 'ELA WIECKO VOLKMER DE CASTILHO (15h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0008','1',20221,(SELECT idProfessor from Professor where nome = 'GILNEY AMORIM VIANA (5h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0009','1',20221,(SELECT idProfessor from Professor where nome = 'GUILLERMO JOSE ASPER Y VALDES (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0015','1',20221,(SELECT idProfessor from Professor where nome = 'MURILO SILVA DE CAMARGO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0015','2',20221,(SELECT idProfessor from Professor where nome = 'MURILO SILVA DE CAMARGO (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0018','1',20221,(SELECT idProfessor from Professor where nome = 'NADIR HILGER (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0018','3',20221,(SELECT idProfessor from Professor where nome = 'VIVIANE DE MELO RESENDE (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0018','4',20221,(SELECT idProfessor from Professor where nome = 'VIVIANE DE MELO RESENDE (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0018','6',20221,(SELECT idProfessor from Professor where nome = 'NADIR HILGER (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0018','8',20221,(SELECT idProfessor from Professor where nome = 'NADIR HILGER (30h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0021','1',20221,(SELECT idProfessor from Professor where nome = 'SILVIA BADIM MARQUES (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0021','1',20221,(SELECT idProfessor from Professor where nome = 'LUCAS BRITO DE LIMA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0021','1',20221,(SELECT idProfessor from Professor where nome = 'Tony Gigliotti Bezerra (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0030','1',20221,(SELECT idProfessor from Professor where nome = 'PATRICIA CRISTINA DA SILVA PINHEIRO (0h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0030','1',20221,(SELECT idProfessor from Professor where nome = 'CELI NELZA ZULKE TAFFAREL (0h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0043','1',20221,(SELECT idProfessor from Professor where nome = 'ADALBERTO DE SALLES LIMA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0047','1',20221,(SELECT idProfessor from Professor where nome = 'ENAILE DO ESPIRITO SANTO IADANZA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0047','1',20221,(SELECT idProfessor from Professor where nome = 'MAGNO ANTONIO MATAMOROS BURGOS (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0047','1',20221,(SELECT idProfessor from Professor where nome = 'HILTON PEREIRA DA SILVA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0047','1',20221,(SELECT idProfessor from Professor where nome = 'MANOEL PEREIRA DE ANDRADE (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'TAYANE MEDEIROS DE OLIVEIRA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'CASSIO MURILO ALVES COSTA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'JONATAS DE FRANCA BARROS (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'RAUL LUÍS DE MELO DUSI (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'ISAIAS NERY FERREIRA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'JACKELINE NERES BELLUCCI (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'ANDRE RIBEIRO DA SILVA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'FELIPE SILVA BELLUCCI (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'JITONE LEONIDAS SOARES (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'ANDREA DE OLIVEIRA GONCALVES (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0051','1',20221,(SELECT idProfessor from Professor where nome = 'ALESSANDRA LISBOA DA SILVA (60h)'));
INSERT INTO Turma(codDisciplinaTurma,numeroTurma,periodo,codProfessorTurma) VALUES ('CEM0054','1',20221,(SELECT idProfessor from Professor where nome = 'FERNANDO PAIVA SCARDUA (60h)'));