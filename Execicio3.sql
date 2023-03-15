CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tarja varchar(255) not null,
categoria varchar(255) not null,
primary key(id)
);

insert into tb_categoria(tarja,categoria)
values ("preta","benzodiazepínicos");

insert into tb_categoria(tarja,categoria)
values ("preta","opiáceos");

insert into tb_categoria(tarja,categoria)
values ("vermelha","opiáceos");

insert into tb_categoria(tarja,categoria)
values ("branca","antihistamínicos");

insert into tb_categoria(tarja,categoria)
values ("vermelha","antibióticos");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
laboratorio varchar(255) not null,
tipo varchar(255) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Alprazolam","40.00","EMS","comprimido",1);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Fentanyl","100.00","EMS","injeção",2);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Morfina","60.00","EMS","comprimido",2);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Clonazepam","25.00","nova química","comprimido",1);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Codeína","60.00","Crystaline","Xarope",3);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Prometazina","10.00","germed","comprimido",4);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Amoxixilina","45.00","EMS","Xarope",5);

insert into tb_produtos(nome,preco,laboratorio,tipo,categoria_id)
values ("Oxicodona","140.00","neoquimica","comprimido",3);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where nome like "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id
where categoria_id = 2;