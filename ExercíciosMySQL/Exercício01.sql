create database db_controle_rh;

use db_controle_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(50),
idade int(2),
cpf bigint(11) not null,
salario decimal(10, 2),
ativo boolean,
primary key(id)
);

insert into tb_funcionarios(nome, idade, cpf, salario, ativo) values ("Edgard", 19, 51703178831, 1800, true);
insert into tb_funcionarios(nome, idade, cpf, salario, ativo) values("Lais", 22, 51703278861, 2500, false);
insert into tb_funcionarios(nome, idade, cpf, salario, ativo) values("Bia", 23, 17371802865, 2600, true);
insert into tb_funcionarios(nome, idade, cpf, salario, ativo) values("João", 40, 17371802661, 3500, true);
insert into tb_funcionarios(nome, idade, cpf, salario, ativo) values("Lucas", 26, 17371802867, 5000, false);

select * from tb_funcionarios;

-- AO término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionarios set salario = 3800 where id = 5;

-- Faça um select que retorne os funcionaries com o salário menor que 2000.
select * from tb_funcionarios where salario > 2000;

-- Faça um select que retorne os funcionaries com o salário menor que 2000.
select * from tb_funcionarios where salario < 2000;
