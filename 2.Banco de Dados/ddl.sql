create database catalogoDB;
drop database catalogoDB;
use catalogoDB;

create table tb_user (
	id_user				int primary key auto_increment,
    nm_user				varchar(250),
    ds_email			varchar(250),
    ds_senha			varchar(20)
);

drop table tb_user;

create table tb_filme (
	id_filme			int primary key auto_increment,
    id_user				int,
    nm_filme			varchar(250),
    ds_sinopse			varchar(4000),
    vl_avaliacao		decimal(15,2),
    dt_lancamento		date,
    bt_disponivel		boolean,
    img_film			varchar(1000),
	foreign key (id_user) references tb_user (id_user)
);