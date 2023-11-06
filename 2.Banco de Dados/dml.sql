use catalogoDB;

-- carga inicial 'usuario' admin
insert into tb_user (nm_user, ds_email, ds_senha)
	values('admin', 'admin@admin.com', '1234');
    
-- CS01 :: efetuar login
select 	id_user			id,
		nm_user			nome,
        ds_email		email
from 	tb_user 
where	ds_email 		= 'admin@admin.com'
and		ds_senha		= '1234';

-- CS02 :: cadastrar novo filme
insert into tb_filme (id_user, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel)
	values(1, 'Harry Potter e a camara secreta', 'filme bem foda', 8.2, '2012-02-11', true);

-- CS02.1 :: alterar a imagem do filme
update  tb_filme
	set img_filme		= '/storage/film/0021203.jpg'
where   id_filme = 1;

-- CS03 :: alterar filme
update tb_filme
	set nm_filme		= 'Harry Potter e a pedra filosofal',
		ds_sinopse		= 'Filme bem legal',
        vl_avaliacao	= 9.5,
        dt_lancamento	= '2010-11-02',
        bt_disponivel	= true,
where id_filme = 1;

-- CS04 :: deletar filme 	 
delete from tb_filme
	where id_filme = 1;
    
-- CS05 :: consultar todos os filmes
select 	id_filme			id,
		nm_filme			nome,
		vl_avaliacao		avaliacao,
        dt_lancamento		lancamento,
        bt_disponivel		disponivel
from tb_filme;

-- CS06 :: consultar filme por nome
select 	id_filme			id,
		nm_filme			nome,
		vl_avaliacao		avaliacao,
		dt_lancamento		lancamento,
        bt_disponivel		disponivel
        from tb_filme
where nm_filme 			like '%a%';

-- CS07 :: consultar filme por ID
select 	id_filme			id,
		nm_filme			nome,
		vl_avaliacao	avaliacao,
        ds_sinopse		sinopse,
        dt_lancamento	lancamento,
        bt_disponivel	disponivel,
        img_filme		capa
        from tb_filme
where id_filme 			= 1;