import "dotenv/config";
import express from "express";
import cors from "cors";
import usuarioController from './controller/usuarioController.js';
import inserirFilme from './controller/filmeController.js';

const server = express();
server.use(cors());
server.use(express.json());

server.use(inserirFilme);
server.use(usuarioController);


console.log('BD conectado ')
server.listen(process.env.PORT, () => console.log(`api conectada na porta ${process.env.PORT}`));
