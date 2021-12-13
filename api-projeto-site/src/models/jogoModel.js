var database = require("../database/config")

function jogo(NomeJogo) {
    console.log("ACESSEI O JOGO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():");
    var instrucao = `
        INSERT INTO leonardo_jogo (NomeJogo, fk_usuario) VALUES ('${NomeJogo}', '${(Math.random() * 4 + 1).toFixed()}');
    `;
    console.log("Executando a instrução SQL: \n"+instrucao);
    return database.executar(instrucao);
}

module.exports = {
    jogo,
};