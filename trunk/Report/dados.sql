INSERT INTO ANO_LECTIVO (titulo_ano, data_inicio, data_fim)
VALUES ('2011/2012', '20110901', '20120730');

INSERT INTO CURSO (nome_curso)
VALUES ('Engenharia Informatica');

INSERT INTO CURSO (nome_curso)
VALUES ('Gestao de Empresas');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Pedro Moreira', 'mail@pedromoreira.org', 'pedro', '1234567');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Joao Paulo Trindade', 'jpt@ipbeja.pt', 'jptrindade', '1234567');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Elsa Rodrigues', 'er@ipbeja.pt', 'errodrigues', '1234567');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Lucinda Raposo', 'lr@gmail.com', 'lraposo', '1234567');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Guilherme Moreira', 'guilherme@hotmail.com', 'guilherme', '1234567');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Jon Doe', 'jd@email.com', 'jd', '1234567');

INSERT INTO UTILIZADOR (nome, email, username, pass)
VALUES ('Isabel Brito', 'ib@ipbeja.pt', 'isabelbrito', '1234567');

INSERT INTO CURSO_ANO (num_curso, num_ano, num_coordenador)
VALUES(3,4,2);

INSERT INTO CURSO_ANO (num_curso, num_ano, num_coordenador)
VALUES(4, 4, 3);

INSERT INTO DISCIPLINA (num_curso, titulo)
VALUES (3, 'Bases de Dados I');

INSERT INTO DISCIPLINA (num_curso, titulo)
VALUES (3, 'Fundamentos de Sistemas de Informacao');

INSERT INTO DISCIPLINA (num_curso, titulo)
VALUES (3, 'Engenharia de Software');

INSERT INTO SEMESTRE (num_ano, titulo_semestre, data_inicio, data_fim)
VALUES (4, 'Outono 2011', '20110901', '20120301');

INSERT INTO SEMESTRE (num_ano, titulo_semestre, data_inicio, data_fim)
VALUES (4, 'Primavera 2012', '20120302', '20120730');

INSERT INTO DISCIPLINA_SEMESTRE (num_disciplina, num_semestre)
VALUES (1,2)

INSERT INTO DISCIPLINA_SEMESTRE (num_disciplina, num_semestre)
VALUES (2,1)

INSERT INTO DISCIPLINA_SEMESTRE (num_disciplina, num_semestre)
VALUES (3,2)

INSERT INTO DOCENTE(num_disciplina, num_semestre, num_utilizador)
VALUES (1,2,3);

INSERT INTO DOCENTE(num_disciplina, num_semestre, num_utilizador)
VALUES (1,2,2);

INSERT INTO DOCENTE(num_disciplina, num_semestre, num_utilizador)
VALUES (2,1,2);

INSERT INTO DOCENTE(num_disciplina, num_semestre, num_utilizador)
VALUES (3,2,7);

INSERT INTO DOCENTE(num_disciplina, num_semestre, num_utilizador)
VALUES (3,2,2);

INSERT INTO AVALIACAO (num_disciplina, num_semestre, data_avaliacao, peso, tipo_avaliacao)
VALUES(1, 2, '20120625', '50', 'exame');

INSERT INTO AVALIACAO (num_disciplina, num_semestre, data_avaliacao, peso, tipo_avaliacao)
VALUES(1, 2, '20120625', '50', 'trabalho pratico');

INSERT INTO AVALIACAO (num_disciplina, num_semestre, data_avaliacao, peso, tipo_avaliacao)
VALUES(2, 1, '20110301', '100', 'exame');

INSERT INTO AVALIACAO (num_disciplina, num_semestre, data_avaliacao, peso, tipo_avaliacao)
VALUES(3, 2, '20120621', '50', 'exame');

INSERT INTO AVALIACAO (num_disciplina, num_semestre, data_avaliacao, peso, tipo_avaliacao)
VALUES(1, 2, '20120618', '50', 'trabalho pratico');

INSERT INTO ALUNO (num_ano, num_utilizador, data_matricula, num_curso)
VALUES (4, 1, '20110901', 3);

INSERT INTO ALUNO (num_ano, num_utilizador, data_matricula, num_curso)
VALUES (4, 4, '20110901', 4);

INSERT INTO ALUNO (num_ano, num_utilizador, data_matricula, num_curso)
VALUES (4, 5, '20110901', 3);

INSERT INTO ALUNO (num_ano, num_utilizador, data_matricula, num_curso)
VALUES (4, 6, '20110901', 3);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(1, 1, 2, 4, 1);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(1, 2, 1, 4, 1);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(1, 3, 2, 4, 1);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(5, 1, 2, 4, 1);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(5, 2, 1, 4, 1);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(5, 3, 2, 4, 1);

INSERT INTO MATRICULA_DISCIPLINA 
(num_utilizador, num_disciplina, num_semestre, num_ano, activada)
VALUES(6, 2, 1, 4, 1);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (1, 1, 1, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (1, 1, 2, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (1, 2, 3, 1);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (1, 3, 4, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (1, 1, 5, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (5, 1, 1, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (5, 1, 2, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (5, 2, 3, 1);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (5, 3, 4, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (5, 1, 5, 2);

INSERT INTO AVALIACAO_ALUNO
(num_utilizador, num_disciplina, num_avaliacao, num_semestre)
VALUES (6, 2, 3, 1);
