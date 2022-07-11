
const express = require('express');
const app = express();

require('dotenv').config();

app.get("/saludos", function(req, res){
    res.send("Hola desde express");
});

const PORT = process.env.PORT

app.listen(PORT, ()=> {
    console.log(`El servidor funciona correctamente en el puerto: ${PORT}`);
})
