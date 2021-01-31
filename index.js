const express = require('express')
const app = express();

app.get('/docker-test', function (req, resp){
    resp.header("Content-Type",'application/json')
    resp.status(200)
    resp.send('{"message":"mensaje desde docker"}')
})


app.listen(8000,function () {
    console.log("Server UP on port 8000")
})

