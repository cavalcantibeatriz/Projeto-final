var express = require("express");
var router = express.Router();

var rataController = require("../controllers/rataController");
// router que ele ta fzd --> /cadastrar

router.post("/cadastrar", function (req, res) {
    rataController.cadastrar(req, res);
});

module.exports = router;