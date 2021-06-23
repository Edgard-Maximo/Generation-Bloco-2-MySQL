drop database tb_farmacia_do_bem; 

use tb_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
pedido varchar(255) not null,
estoque int not null,
primary key (id)
);

insert into tb_categoria (pedido, estoque) values ("Medicamento", 125);
insert into tb_categoria (pedido, estoque) values ("Cosmético", 175);
insert into tb_categoria (pedido, estoque) values ("higiene", 225);
insert into tb_categoria (pedido, estoque) values ("Dermatologia", 250);
insert into tb_categoria (pedido, estoque) values ("Bebê", 145);

select * from tb_categoria;

Create table tb_produto(
id bigint auto_increment,
nome varchar(255)not null,
valor decimal (10, 2)not null,
quantidade int not null,
entrega boolean not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) references tb_categorias(id)
);

insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Dipirona", 3.00, 3, true, 1);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Perfume", 45.00, 1, false, 2);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Protetor Solar", 33.50, 3, true, 4);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Sabonete", 14.50, 10, true, 3);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Fraldas", 63.80, 20, false, 5);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Asperina", 13.50, 6, true, 1);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("lenço Umidecido", 22.30, 2, true, 5);
insert into tb_produto (nome, valor, quantidade, entrega, categoria_id) values ("Roacutan", 130.00, 1, true, 4);

 select * from tb_produto;

 select * from tb_produto where valor > 50;

 select * from tb_produto where valor between 3 and 60;

 select * from tb_produto where nome like "%B%"

 select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id in(2);