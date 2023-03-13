CREATE DATABASE db_empresa_;

USE db_empresa_;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment,
nome varchar(255) not null,
salario decimal not null,
setor varchar(255) not null,
filial varchar(255) not null,
cargo varchar(255) not null,
primary key (id)
);

INSERT INTO tb_funcionarios(nome,salario,setor,filial,cargo)
VALUES ("Anderson", 2000.00, "Adiministração", "São Paulo", "Estagiário");

INSERT INTO tb_funcionarios(nome,salario,setor,filial,cargo)
VALUES ("Amanda", 2500.00, "Atendimento", "Rio de Janeiro", "Estagiária");

INSERT INTO tb_funcionarios(nome,salario,setor,filial,cargo)
VALUES ("Diego", 20000.00, "Adiministração", "Rio de Janeiro", "Gerente");

INSERT INTO tb_funcionarios(nome,salario,setor,filial,cargo)
VALUES ("Catharina", 500000.00, "Adiministração", "Todas as filiais", "CEO");

INSERT INTO tb_funcionarios(nome,salario,setor,filial,cargo)
VALUES ("Kerber", 5000.00, "Cozinha", "São Paulo", "Chefe de cozinha");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SET SQL_SAFE_UPDATES = 1;

UPDATE tb_funcionarios SET salario = 6000 WHERE id=5;



