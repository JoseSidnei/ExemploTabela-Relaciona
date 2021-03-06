﻿DROP TABLE caracteristicas;
DROP TABLE alunos;
CREATE TABLE alunos(
	id		INT IDENTITY(1,1),
	nome	VARCHAR(200),
	idade	TINYINT,
	PRIMARY KEY (id)
);

CREATE TABLE caracteristicas(
	id			INT IDENTITY(1,1),
	id_aluno	INT,
	nome VARCHAR(150) NOT NULL,
	FOREIGN KEY (id_aluno) REFERENCES alunos(id)
);

INSERT INTO alunos (nome, idade) VALUES ('Alice', 18);
INSERT INTO alunos (nome, idade) VALUES ('Sophia', 4);
INSERT INTO alunos (nome, idade) VALUES ('Miguel', 9);
INSERT INTO alunos (nome, idade) VALUES ('Heitor', 23);
INSERT INTO alunos (nome, idade) VALUES ('Valentina', 15);
INSERT INTO alunos (nome, idade) VALUES ('Joaquim', 49);

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Organizado(a)'),
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Altruísta');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Pontual'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Observadora'),
((SELECT id FROm alunos WHERE nome = 'Sophia'), 'Desobediente'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Sensível');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Criativo(a)'),
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Intolerante');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Indelicado(a)');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Valentina'), 'Pessimista');

INSERT INTO caracteristicas (id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Flexível'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Paciente'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Empático(a)'),
((SELECT id FROm alunos WHERE nome = 'Joaquim'), 'Altruísta');


SELECT * FROM alunos;
SELECT * FROM caracteristicas;