var ratoModel = require("../models/ratoModel");

function trazer(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html

    ratoModel.trazer()
    .then(
        function (resultado) {
            console.log(JSON.stringify(resultado))
            res.json(resultado);
        }
    );
}
module.exports = {
    trazer,
}