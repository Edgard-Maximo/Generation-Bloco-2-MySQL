create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
vida decimal(10, 2) not null,
mana decimal (10, 2)not null,
primary key(id)
);
insert into tb_classe (nome, vida, mana) values ("Arqueiro", 3000, 2500); -- Arqueiro = 1
insert into tb_classe (nome, vida, mana) values ("Mago", "4000", "3600"); -- Mago = 2
insert into tb_classe (nome, vida, mana) values ("Guerreiro", "5000", "2000"); -- Guerreiro = 3
insert into tb_classe (nome, vida, mana) values ( "Suporte", 7000, 4500); -- Suporte = 4
insert into tb_classe (nome, vida, mana) values ( "Caçador", 7000, 4500); -- Caçador =5

select * from tb_classe;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
poderAtaque decimal(10, 2),
poderMagia decimal(10, 2),
poderDefesa decimal(10, 2),
poderVelocidade decimal(10, 2),
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Ninja", 3000, 800, 2000, 2500, 5);
insert tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Ryu", 5000, 4500, 3000, 3500, 3);
insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Cassadin", 4000, 3500, 2000, 4500, 3);
insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Robb", 6000, 2500, 5000, 5500, 1);
insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Ryu", 5000, 4500, 3000, 3500, 3);
insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Coveiro", 1000, 3700, 6000, 2500, 4);
insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Gandalf", 4800, 7500, 4000, 3800, 2);
insert into tb_personagens (nome, poderAtaque, poderMagia, poderDefesa, poderVelocidade, classe_id) values ("Gaviao", 2500, 1500, 1000, 6500, 1);

select * from tb_personagens;

select * from tb_classe;

select * from tb_personagens where poderAtaque > 2000;

select * from tb_personagens where poderDefesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select tb_personagens.nome, tb_personagens.poderAtaque, tb_personagens.poderMagia, tb_personagens.poderDefesa, tb_personagens.poderVelocidade,
 tb_classe.nome, tb_classe.vida, tb_classe.mana from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select * from tb_personagens  where classe_id = 1; 