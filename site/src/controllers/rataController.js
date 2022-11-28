var rataModel = require("../models/rataModel");

function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var dados = req.body.sorteioServer;
    var nome = req.body. nomeServer;

    rataModel.cadastrar(nome,dados)
    .then(
        function (resultado) {
            res.json(resultado);
        }
    );
}
module.exports = {
    cadastrar
}