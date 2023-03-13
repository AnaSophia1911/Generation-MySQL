CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
	nome VARCHAR(255) not null,
    habilidade VARCHAR(255) not null,
    arma VARCHAR(255) not null,
    primary key(id)
);

INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Necromancer", "Ascenção dos mortos", "Tomo mágico");

INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Clérica", "Curar", "Cajado de cura");


INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Bárbaro", "Fúria", "Machado");


INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Monge", "Tranquilidade", "Saberes antigos");


INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Mago", "Feitiços", "Livro de feitiços");

CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT,
	nome varchar(100),
	nivel int, 
	ataque int, 
	defesa int, 
	classe_id bigint,
    primary key(id),
    foreign key(classe_id) references tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Gaige", 420, 300, 100, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Maya", 101, 30, 600, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jacko", 500, 3000, 1000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Salvador", 1, 300, 100, 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Kreig", 1000, 5000, 1000, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Zero", 10, 30, 100, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Zarker", 100, 1000, 100, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mokona", 100, 300, 100, 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%Maya%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id = 2;

SELECT * FROM tb_personagens;




