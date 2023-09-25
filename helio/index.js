const express = require("express");
const app = express();

app.set('view engine', 'ejs');
app.use(express.static('public'));

app.listen(8080, ()=>{
    console.log("app rodando");
});

app.get("/",(req, res)=>{
    var nome = "Dhyego";
    var idade = 25;
    var produtos = [
        {nome: "Abacaxi", preco: 3},
        {nome: "Abacate", preco: 8},
        {nome: "lingua de boi", preco: 25}

    ];
    res.render("index", {
        nome : nome,
        idade : idade,
        produtos : produtos
    });
  
});
app.get("/usuario",(req, res)=>{
    res.send("oi, usuario");
});