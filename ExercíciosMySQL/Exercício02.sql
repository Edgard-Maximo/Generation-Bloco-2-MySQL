create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
 categoria varchar(20) not null,
    marca varchar(20) not null,
    nome varchar(30) not null,
    preco decimal(10,2),
    estoque int(4),
    primary key(id)
    );
    
    insert into tb_produtos(categoria, marca, nome, preco, estoque) values  ("Processadores", "AMD", "Ryzen 5 3600", 1500, 20);
	insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Processadores", "Intel", "I5 10400F", 1259.90, 23);
	insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Placa de vídeo", "AMD", "RX  5500XT", 1200, 37);
	insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Placa de vídeo", "NVIDIA", "GTX 1650 Super", 1259, 18);
	insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Armazenamento", "Seagate", "SSD 240Gb m.2", 256.90, 120);
	insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Teclado", "Redragon", "Dark Avenger", 320, 45);
    insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Headset", "Redragon", "Zeus H510", 420, 33);
	insert into tb_produtos(categoria, marca, nome, preco, estoque) values("Mouse", "Razer", "Deathadder v2", 519.90, 70); 
    
    select * from tb_produtos;
    
    select * from tb_produtos where preco >500;
    
    select * from tb_produtos where preco <500;
    
    update tb_produtos set preco = 1346 where id = 1;
    
