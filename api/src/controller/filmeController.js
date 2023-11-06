import { inserirFilme } from "../repository/filmeRepository.js";

import { Router } from "express";
const server = Router();

server.post('/filme', async (req, resp) => {
    try{
        const novoFilme = req.body;

        if(!novoFilme.nome){
            throw new Error('Nome Obrigatório')
        }

        if(!novoFilme.sinopse){
            throw new Error('sipnose Obrigatório')
        }

        if(novoFilme.avaliacao == undefined || novoFilme.avaliacao < 0){
            throw new Error('avaliação Obrigatório')
        }

        if(!novoFilme.lancamento){
            throw new Error('data de lancamento Obrigatório')
        }

        if(!novoFilme.disponivel){
            throw new Error('campo disponivel Obrigatório')
        }

        if(!novoFilme.usuario){
            throw new Error('usuario não logado')
        }



        const filmeInserido = await inserirFilme(novoFilme);

        resp.send(filmeInserido)


    } catch (err){
        resp.status(400).send({
            erro: err.message
        })
    }
})


export default server;