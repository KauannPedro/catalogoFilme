import { con } from './connection.js';

export async function inserirFilme(filme){
    const comando = `
        insert into tb_filme (id_user, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel)
                       values(?, ?, ?, ?, ?, ?)
                    `

    const [resposta] = await con.query(comando, [filme.usuario, filme.nome, filme.sinopse, filme.avaliacao, filme.lancamento, filme.disponivel]);
    filme.id = resposta.insertId;
    
    return filme;
}