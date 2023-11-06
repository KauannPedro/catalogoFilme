import { response } from 'express';
import {con} from './connection.js';

export async function login(email, senha){
    const comando = `
        select 	id_user			id,
                nm_user			nome,
                ds_email        email
           from tb_user 
          where ds_email 		= ?
            and	ds_senha		= ?
            `

    const [linhas] = await con.query(comando, [email, senha])
    return linhas[0];
}