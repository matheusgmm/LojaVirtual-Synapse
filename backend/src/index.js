// Importar bibliotecas 
const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

//Criando aplicacao
const app = express();
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'lojavirtual'
});
connection.connect();

app.use(cors({
    origin: '*'

}));

app.get('/products/carros', function(req, res) {
    connection.query('SELECT * FROM products WHERE category = "CARRO"', function(error, results) {
        if (error) {
            throw error;
        }
        else {
            res.send(results);
        }
    });
});

app.get('/products/tenis', function(req, res) {
    connection.query('SELECT * FROM products WHERE category = "TENIS"', function(error, results) {
        if (error) {
            throw error;
        }
        else {
            res.send(results);
        }
    });
});

app.get('/products/tenis/1', function(req, res) {
    connection.query('SELECT * FROM products WHERE id = 1', function(error, results) {
        if (error) {
            throw error;
        }
        else {
            res.send(results);
        }
    });
});


app.listen(9001, '0.0.0.0', function () {
    console.log("Aplicacao rodando na porta 9001");
});