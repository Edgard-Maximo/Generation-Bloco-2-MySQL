create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
profissao varchar (255) not null,
ead boolean not null,
primary key (id)
);

insert into tb_categoria (profissao, ead) values ("Idioma", true);
insert into tb_categoria (profissao, ead) values ("Gestão", true);
insert into tb_categoria (profissao, ead) values ("Técnico", true);
insert into tb_categoria (profissao, ead) values ("Profissionalizante", true);
insert into tb_categoria (profissao, ead) values ("Livre", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
vagas int not null,
preco decimal (10,2) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Inglês", 20, 650.00, 1);
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Dança", 32, 985.00, 5);
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Programação com Python", 50, 3500,3);
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Programação com Java", 15, 2500.00, 3);
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Culinária", 5, 800.00, 5);
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Gestão de Tempo Pessoal", 30, 250.00, 2);
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Literatura Inglesa", 60, 789.90, 5 );
insert into tb_produtos (nome, vagas, preco, categoria_id) values ("Barbeiro", 10, 560.00, 4);

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco between 300 and 600;

select * from tb_produtos where nome like "%J%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria_id in(3);
