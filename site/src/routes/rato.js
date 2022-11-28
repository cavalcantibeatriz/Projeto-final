var express = require("express");
var router = express.Router();

var ratoController = require("../controllers/ratoController.js");
// router que ele ta fzd --> /cadastrar

router.get("/trazer", function (req, res) {
    ratoController.trazer(req, res);
});

module.exports = router;