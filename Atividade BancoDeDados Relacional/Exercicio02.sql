create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho int not null,
bordaRecheada varchar (255) not null,
retiradaEntrega varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tamanho, bordaRecheada, retiradaEntrega) values (8, "chocolate", "entrega"); 
insert into tb_categoria (tamanho, bordaRecheada, retiradaEntrega) values (6, "Cheddar", "retirada"); 
insert into tb_categoria (tamanho, bordaRecheada, retiradaEntrega) values (6, "Catupiry", "entrega"); 
insert into tb_categoria (tamanho, bordaRecheada, retiradaEntrega) values (4, "Goiaba", "entrega"); 
insert into tb_categoria (tamanho, bordaRecheada, retiradaEntrega) values (8, "SemBorda", "entrega");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
sabor varchar(255) not null,
ingredientes varchar(255) not null,
preco decimal (10, 2) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert into tb_pizza (nome, sabor, ingredientes, preco, categoria_id) values ("Mssarela", "Salgada", "QUeijo e Orégano", 65.50, 2);
insert into tb_pizza (nome, sabor, ingredientes, preco, categoria_id) values ("Calabresa", "Salgada", "Calabresa e Cebola", 33.80, 3);
insert into tb_pizza (nome, sabor, ingredientes, preco, categoria_id) values ("Frango", "Salgada", "Frang", 38.70, 2);
insert into tb_pizza (nome, sabor, ingredientes, preco,categoria_id) values ("Atum", "Salgada", "Atum", 50.00, 5);
insert into tb_pizza (nome, sabor, ingredientes, preco,categoria_id) values ("Portuguesa", "Salgada", "QUeijo, Ovo, Presento, Milho, Ervilha", 75.00, 5);
insert into tb_pizza (nome, sabor, ingredientes, preco,categoria_id) values ("Brigadeiro", "Doce", "Cholate e Granulado", 29.50, 4);
insert into tb_pizza (nome, sabor, ingredientes, preco,categoria_id) values ("Ninho", "Doce", "Nutella e LeiteNinho", 80.00, 1);
insert into tb_pizza (nome, sabor, ingredientes, preco,categoria_id) values ("M&M", "Doce", "Chocolate e M&M", 58.00, 1);

 select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select tb_categoria.tamanho, tb_categoria.bordaRecheada, tb_categoria.retiradaEntrega,tb_pizza.nome, tb_pizza.sabor, tb_pizza.ingredientes,
 tb_pizza.preco from  tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
 
 select * from tb_pizza  where categoria_id in(1, 4);

