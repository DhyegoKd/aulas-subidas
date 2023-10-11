const express = require("express");
const router = express.Router()
const Produto = require("./Produto");
const bodyParser = require("body-parser");

router.use(bodyParser.urlencoded({ extended: false }));
router.use(bodyParser.json());


router.get("/produtos/novo", (req, res) => {
    res.render("produtos/novo");
});

router.post("/salvarProduto", (req, res) => {
    var titulo = req.body.titulo;
    var descricao = req.body.descricao;
    Produto.create({
        titulo: titulo,
        descricao: descricao
    }).then(() => {
        res.redirect("/produtos");
    });
});

router.get("/produtos", (req, res) => {
    Produto.findAll({ raw: true }).then(produtos => {
        console.log(produtos);
        res.render("produtos/index", {
            produtos: produtos
        });
    });
});

router.post("/produtos/delete", (req, res) => {
    var id = req.body.id;

    Produto.destroy({
        where: {
            id : id
        }

    }).then(()=>{
        res.redirect("/produtos");

    })
});

module.exports = router;