/* CRIACAO DAS TABELAS  */
CREATE TABLE UTILIZADOR (
	num_utilizador	INT			IDENTITY,
	nome			CHAR(100)	NOT NULL,
	morada			CHAR(100),
	telefone		CHAR(20),
	email			CHAR(100)	NOT NULL,
	username		CHAR(20)	NOT NULL,
	pass			CHAR(20)	NOT NULL,
	foto			CHAR(20),
	UNIQUE			(email, username),
	PRIMARY KEY		(num_utilizador) 
);

CREATE TABLE ANO_LECTIVO(
	num_ano			INT			IDENTITY,
	titulo_ano		CHAR(9)		NOT NULL,
	data_inicio		CHAR(10)	NOT NULL,
	data_fim		CHAR(10)	NOT NULL,
	CHECK			(data_fim > data_inicio),
	UNIQUE			(titulo_ano),
	
	PRIMARY KEY		(num_ano)
);

CREATE TABLE CURSO(
	num_curso		INT			IDENTITY,
	nome_curso		CHAR(100)	NOT NULL,
	descricao		CHAR(1000)
	
	PRIMARY KEY		(num_curso)
);

CREATE TABLE DISCIPLINA(
	num_disciplina	INT			IDENTITY,
	num_curso		INT			NOT NULL,
	descricao		CHAR(1000),
	titulo			CHAR(100)	NOT NULL,
	
	FOREIGN KEY		(num_curso)
		REFERENCES	CURSO		(num_curso)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	PRIMARY KEY		(num_disciplina)
);

CREATE TABLE SEMESTRE(
	num_semestre	INT			IDENTITY,
	num_ano			INT			NOT NULL,
	titulo_semestre	CHAR(50)	NOT NULL,
	data_inicio		CHAR(10)	NOT NULL,
	data_fim		CHAR(10)	NOT NULL,
	
	FOREIGN KEY		(num_ano)
		REFERENCES	ANO_LECTIVO	(num_ano)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	CHECK (data_fim > data_inicio),
	PRIMARY KEY		(num_semestre)
	
);

CREATE TABLE CURSO_ANO(
	num_curso		INT			NOT NULL,
	num_ano			INT			NOT NULL,
	num_coordenador	INT,
	
	FOREIGN KEY		(num_ano)
		REFERENCES	ANO_LECTIVO (num_ano)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	FOREIGN KEY		(num_curso)
		REFERENCES	CURSO (num_curso)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	FOREIGN KEY		(num_coordenador)
		REFERENCES	UTILIZADOR	(num_utilizador)
		ON UPDATE	CASCADE
		ON DELETE	NO ACTION,
	PRIMARY KEY		(num_curso, num_ano)
);

CREATE TABLE DISCIPLINA_SEMESTRE(
	num_disciplina	INT			NOT NULL,
	num_semestre	INT			NOT NULL,
	
	FOREIGN KEY		(num_semestre)
		REFERENCES	SEMESTRE	(num_semestre)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	FOREIGN KEY		(num_disciplina)
		REFERENCES	DISCIPLINA	(num_disciplina)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	PRIMARY KEY		(num_disciplina, num_semestre)
);

CREATE TABLE DOCENTE(
	num_disciplina	INT			NOT NULL,
	num_semestre	INT			NOT NULL,
	num_utilizador	INT			NOT NULL,
	
	FOREIGN KEY		(num_utilizador) 
		REFERENCES	UTILIZADOR	(num_utilizador)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	FOREIGN KEY		(num_disciplina, num_semestre)
		REFERENCES	DISCIPLINA_SEMESTRE (num_disciplina, num_semestre)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	PRIMARY KEY		(num_utilizador, num_disciplina, num_semestre)
);

CREATE TABLE AVALIACAO(
	num_avaliacao	INT			IDENTITY,
	num_disciplina 	INT			NOT NULL,
	num_semestre	INT			NOT NULL,
	data_avaliacao	CHAR(10),
	peso			INT			NOT NULL,
	sala			CHAR(20),
	tipo_avaliacao	CHAR(100)	NOT NULL,
	observacoes		CHAR(1000),
	
	FOREIGN KEY		(num_disciplina, num_semestre)
		REFERENCES	DISCIPLINA_SEMESTRE (num_disciplina, num_semestre)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	PRIMARY KEY		(num_avaliacao)
);

CREATE TABLE ALUNO(
	num_ano			INT			NOT NULL,
	num_utilizador	INT			NOT NULL,
	data_matricula	CHAR(10)		NOT NULL,
	num_curso		INT			NOT NULL,
	
	FOREIGN KEY		(num_utilizador) 
		REFERENCES	UTILIZADOR	(num_utilizador)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	FOREIGN KEY		(num_curso, num_ano)
		REFERENCES	CURSO_ANO (num_curso, num_ano)
		ON UPDATE	NO ACTION
		ON DELETE	NO ACTION,
	PRIMARY KEY		(num_utilizador, num_ano)
);

CREATE TABLE MATRICULA_DISCIPLINA(
	num_utilizador	INT			NOT NULL,
	num_disciplina	INT			NOT NULL,
	num_semestre	INT			NOT NULL,
	num_ano			INT			NOT NULL,
	nota_final		INT,
	activada		BIT			NOT NULL,
	data_nota		CHAR(10),
	
	FOREIGN KEY		(num_utilizador, num_ano)
		REFERENCES	ALUNO (num_utilizador, num_ano)
		ON UPDATE	NO ACTION
		ON DELETE	NO ACTION,
	FOREIGN KEY		(num_disciplina, num_semestre)
		REFERENCES	DISCIPLINA_SEMESTRE (num_disciplina, num_semestre)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	PRIMARY KEY		(num_utilizador, num_disciplina, num_semestre)
);

CREATE TABLE AVALIACAO_ALUNO(
	num_utilizador	INT			NOT NULL,
	num_disciplina	INT			NOT NULL,
	num_avaliacao	INT			NOT NULL,
	nota			INT,
	observacoes		CHAR(1000),
	num_semestre	INT			NOT NULL,
	
	FOREIGN KEY		(num_utilizador, num_disciplina, num_semestre)
		REFERENCES MATRICULA_DISCIPLINA 
					(num_utilizador, num_disciplina, num_semestre)
		ON UPDATE	NO ACTION
		ON DELETE	NO ACTION,
	FOREIGN KEY		(num_avaliacao)
		REFERENCES AVALIACAO (num_avaliacao)
		ON UPDATE	CASCADE
		ON DELETE	CASCADE,
	PRIMARY KEY		(num_utilizador, num_disciplina, num_avaliacao)
);