
DROP TABLE habilidades;
DROP TABLE herois;
CREATE TABLE herois(
	id				INT IDENTITY(1,1),
	nome			VARCHAR(100) NOT NULL,
	dificuldade		TINYINT NOT NULL, 
	funcao			VARCHAR(10) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE habilidades(
	id			INT IDENTITY(1,1) PRIMARY KEY,
	id_heroi	INT,
	nome		VARCHAR(100),
	descricao	TEXT DEFAULT 'N/A'
	FOREIGN KEY (id_heroi) REFERENCES herois(id)
);

INSERT INTO herois (nome, dificuldade, funcao) VALUES
('D.VA', 2, 'Tanque'),
('ORISA', 2, 'Tanque'),
('REINHARDT', 1, 'Tanque'),
('ROADHOG', 1, 'Tanque'),
('WINSTON', 2, 'Tanque'),
('ZARYA', 3, 'Tanque'),
('BASTION', 1, 'Dano'),
('DOOMFIST', 3, 'Dano'),
('GENJI', 3, 'Dano'),
('HANZO', 3, 'Dano'),
('UNKRAT', 2, 'Dano'),
('MCCREE', 2, 'Dano'),
('MEI', 3, 'Dano'),
('PHARAH', 1, 'Dano'),
('REAPER', 1, 'Dano'),
('SOLDADO: 76', 1, 'Dano'),
('SOMBRA', 3, 'Dano'),
('SYMMETRA', 2, 'Dano'),
('TORBJÖRN', 2, 'Dano'),
('TRACER', 2, 'Dano'),
('WIDOWMAKER', 2, 'Dano'),
('ANA', 3, 'Suporte'),
('BRIGITTE', 1, 'SAuporte'),
('LÚCIO', 2, 'Suporte'),
('MERCY', 1, 'Sporte'),
('MOIRA', 2, 'Suporte'),
('ZENYATTA', 3, 'Suporte');

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Canhões de Fusão', NULL),
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Pistola de Luz', NULL),
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Propulsores', NULL),
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Matriz de Defesa', NULL),
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Micro Míss', NULL),
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Autodestruir', NULL),
((SELECT id FROM herois WHERE nome = 'D.VA'), 'Chamar Mecha', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'ORISA'), 'Metralhadora de Fusão', NULL),
((SELECT id FROM herois WHERE nome = 'ORISA'), 'Fortificar', NULL),
((SELECT id FROM herois WHERE nome = 'ORISA'), 'Parados!', NULL),
((SELECT id FROM herois WHERE nome = 'ORISA'), 'Barreira Protetora', NULL),
((SELECT id FROM herois WHERE nome = 'ORISA'), 'Amplificador', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'REINHARDT'), 'Martelo Propulsor', NULL),
((SELECT id FROM herois WHERE nome = 'REINHARDT'), 'Campo de Barreira', NULL),
((SELECT id FROM herois WHERE nome = 'REINHARDT'), 'Investida', NULL),
((SELECT id FROM herois WHERE nome = 'REINHARDT'), 'Tiro Flamejante', NULL),
((SELECT id FROM herois WHERE nome = 'REINHARDT'), 'Abalo Terrestre', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'ROADHOG'), 'Arma de Sucata', NULL),
((SELECT id FROM herois WHERE nome = 'ROADHOG'), 'Pegando Fôlego', NULL),
((SELECT id FROM herois WHERE nome = 'ROADHOG'), 'Corrwnte de Gancho', NULL),
((SELECT id FROM herois WHERE nome = 'ROADHOG'), 'Cair Matando', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'Canhão de Tesla', NULL),
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'Salto a Jato', NULL),
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'Projetor de Barreira', NULL),
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'Fúria Primata', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'ZARYA'), 'Canhão de Partículas', NULL),
((SELECT id FROM herois WHERE nome = 'ZARYA'), 'Barreira de Partículas', NULL),
((SELECT id FROM herois WHERE nome = 'ZARYA'), 'Barreira Projetada', NULL),
((SELECT id FROM herois WHERE nome = 'ZARYA'), 'Surto de Grávitons', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'BASTION'), 'Configuração: Reconhecimento', NULL),
((SELECT id FROM herois WHERE nome = 'BASTION'), 'Configuração: Sentinela', NULL),
((SELECT id FROM herois WHERE nome = 'BASTION'), 'Reconfigurar', NULL),
((SELECT id FROM herois WHERE nome = 'BASTION'), 'Auto Reparo', NULL),
((SELECT id FROM herois WHERE nome = 'BASTION'), 'Configuração: Tanque', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'DOOMFIST'), 'Canhão de Mão', NULL),
((SELECT id FROM herois WHERE nome = 'DOOMFIST'), 'Abalo Sísmico', NULL),
((SELECT id FROM herois WHERE nome = 'DOOMFIST'), 'Gancho Ascendente', NULL),
((SELECT id FROM herois WHERE nome = 'DOOMFIST'), 'Soco Foguete', NULL),
((SELECT id FROM herois WHERE nome = 'DOOMFIST'), 'A Melhor Defesa...', NULL),
((SELECT id FROM herois WHERE nome = 'DOOMFIST'), 'Impacto Meteoro', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'GENJI'), 'Shuriken', NULL),
((SELECT id FROM herois WHERE nome = 'GENJI'), 'Desviar', NULL),
((SELECT id FROM herois WHERE nome = 'GENJI'), 'Golpe Veloz', NULL),
((SELECT id FROM herois WHERE nome = 'GENJI'), 'Lâmina do Dragão', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'HANZO'), 'Arco da Tempestade', NULL),
((SELECT id FROM herois WHERE nome = 'HANZO'), 'Flecha Sônica', NULL),
((SELECT id FROM herois WHERE nome = 'HANZO'), 'Fleshar da tempestade', NULL),
((SELECT id FROM herois WHERE nome = 'HANZO'), 'Salto', NULL),
((SELECT id FROM herois WHERE nome = 'HANZO'), 'Golpe do Dragão', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'UNKRAT'), 'Lançador de Granadas', NULL),
((SELECT id FROM herois WHERE nome = 'UNKRAT'), 'Mina de Concussão', NULL),
((SELECT id FROM herois WHERE nome = 'UNKRAT'), 'Armadilha de Aço', NULL),
((SELECT id FROM herois WHERE nome = 'UNKRAT'), 'Caos Total', NULL),
((SELECT id FROM herois WHERE nome = 'UNKRAT'), 'Pneu da Morte', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'MCCREE'), 'Pacificador', NULL),
((SELECT id FROM herois WHERE nome = 'MCCREE'), 'Rolamento', NULL),
((SELECT id FROM herois WHERE nome = 'MCCREE'), 'Clarão', NULL),
((SELECT id FROM herois WHERE nome = 'MCCREE'), 'Tiro Certeiro', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'MEI'), 'Aniquilador Endotérmico', NULL),
((SELECT id FROM herois WHERE nome = 'MEI'), 'Congelaento Criogênico', NULL),
((SELECT id FROM herois WHERE nome = 'MEI'), 'Muralha de Gelo', NULL),
((SELECT id FROM herois WHERE nome = 'MEI'), 'Nevasca', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'PHARAH'), 'Lançador de Foguetes', NULL),
((SELECT id FROM herois WHERE nome = 'PHARAH'), 'Salto Foguete', NULL),
((SELECT id FROM herois WHERE nome = 'PHARAH'), 'Explosão Concussiva', NULL),
((SELECT id FROM herois WHERE nome = 'PHARAH'), 'Bombardeio', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'REAPER'), 'Espingardas Infernais', NULL),
((SELECT id FROM herois WHERE nome = 'REAPER'), 'Forma Fantasma', NULL),
((SELECT id FROM herois WHERE nome = 'REAPER'), 'Passos das Sombras', NULL),
((SELECT id FROM herois WHERE nome = 'REAPER'), 'Desabrochar da Morte', NULL);


INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'SOLDADO: 76'), 'Rifle de Puslo Pesado ', NULL),
((SELECT id FROM herois WHERE nome = 'SOLDADO: 76'), 'Foguetes Hélix', NULL),
((SELECT id FROM herois WHERE nome = 'SOLDADO: 76'), 'Disparada', NULL),
((SELECT id FROM herois WHERE nome = 'SOLDADO: 76'), 'Campo biótico', NULL),
((SELECT id FROM herois WHERE nome = 'SOLDADO: 76'), 'Visor Tático', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'SOMBRA'), 'Pistola Automática', NULL),
((SELECT id FROM herois WHERE nome = 'SOMBRA'), 'Hackear', NULL),
((SELECT id FROM herois WHERE nome = 'SOMBRA'), 'Furtividade', NULL),
((SELECT id FROM herois WHERE nome = 'SOMBRA'), 'Translocador', NULL),
((SELECT id FROM herois WHERE nome = 'SOMBRA'), 'Pem', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'SYMMETRA'), 'Progetor de Fótons', NULL),
((SELECT id FROM herois WHERE nome = 'SYMMETRA'), 'Torre de Sentinela', NULL),
((SELECT id FROM herois WHERE nome = 'SYMMETRA'), 'Teletransportador', NULL),
((SELECT id FROM herois WHERE nome = 'SYMMETRA'), 'Barreira de Fótons', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'TORBJÖRN'), 'Pistola de Rebite', NULL),
((SELECT id FROM herois WHERE nome = 'TORBJÖRN'), 'Martelo de Forja', NULL),
((SELECT id FROM herois WHERE nome = 'TORBJÖRN'), 'Construir Torrre', NULL),
((SELECT id FROM herois WHERE nome = 'TORBJÖRN'), 'Implemento de Armadura', NULL),
((SELECT id FROM herois WHERE nome = 'TORBJÖRN'), 'Núcleo fundido', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'TRACER'), 'Pistolas Eletromagnéticas', NULL),
((SELECT id FROM herois WHERE nome = 'TRACER'), 'Teleportar', NULL),
((SELECT id FROM herois WHERE nome = 'TRACER'), 'Recordação', NULL),
((SELECT id FROM herois WHERE nome = 'TRACER'), 'Bomba Eletromagnética', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'WIDOWMAKER'), 'beijo da Viúva', NULL),
((SELECT id FROM herois WHERE nome = 'WIDOWMAKER'), 'Arpéu', NULL),
((SELECT id FROM herois WHERE nome = 'WIDOWMAKER'), 'Mina Venenosa', NULL),
((SELECT id FROM herois WHERE nome = 'WIDOWMAKER'), 'Visão Infravermelho', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'ANA'), 'Rifle Biótico', NULL),
((SELECT id FROM herois WHERE nome = 'ANA'), 'Dardo Sonífero', NULL),
((SELECT id FROM herois WHERE nome = 'ANA'), 'Granada Biótica', NULL),
((SELECT id FROM herois WHERE nome = 'ANA'), 'Estimulante', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'BRIGITTE'), 'Mangual a Jato', NULL),
((SELECT id FROM herois WHERE nome = 'BRIGITTE'), 'kit de Reparos', NULL),
((SELECT id FROM herois WHERE nome = 'BRIGITTE'), 'Disparo Açoitador', NULL),
((SELECT id FROM herois WHERE nome = 'BRIGITTE'), 'Barreira de Escudo', NULL),
((SELECT id FROM herois WHERE nome = 'BRIGITTE'), 'Golpe de Escudo', NULL),
((SELECT id FROM herois WHERE nome = 'BRIGITTE'), 'Reagrupar', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'LÚCIO'), 'Amplificador Sônico', NULL),
((SELECT id FROM herois WHERE nome = 'LÚCIO'), 'Transição', NULL),
((SELECT id FROM herois WHERE nome = 'LÚCIO'), 'Solta o Som', NULL),
((SELECT id FROM herois WHERE nome = 'LÚCIO'), 'Barreira de Som', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'MERCY'), 'Bastãod e Caduceu', NULL),
((SELECT id FROM herois WHERE nome = 'MERCY'), 'Desintegrador de Caduceu', NULL),
((SELECT id FROM herois WHERE nome = 'MERCY'), 'Anjo da Guerra', NULL),
((SELECT id FROM herois WHERE nome = 'MERCY'), 'Ressureição', NULL),
((SELECT id FROM herois WHERE nome = 'MERCY'), 'Descenso Angelical', NULL),
((SELECT id FROM herois WHERE nome = 'MERCY'), 'Valquíria', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'MOIRA'), 'Punho Biótico', NULL),
((SELECT id FROM herois WHERE nome = 'MOIRA'), 'Orbe Biótico', NULL),
((SELECT id FROM herois WHERE nome = 'MOIRA'), 'Desvanecer', NULL),
((SELECT id FROM herois WHERE nome = 'MOIRA'), 'Coalescência', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
((SELECT id FROM herois WHERE nome = 'ZENYATTA'), 'Orbe da Destruição', NULL ),
((SELECT id FROM herois WHERE nome = 'ZENYATTA'), 'Orbe da Harmonia', NULL),
((SELECT id FROM herois WHERE nome = 'ZENYATTA'), 'Orbe da Discórdia', NULL),
((SELECT id FROM herois WHERE nome = 'ZENYATTA'), 'Transcendência', NULL);

SELECT * FROM herois;
SELECT * FROM habilidades;