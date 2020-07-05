import Express from "express";
import meteo from "./meteo";
const app = Express();

app.get('/', function (req, res) {
    res.send(meteo());
});

app.listen(80, function () {
    console.log('Express app in a Docker container, listening on port 80 !');
});

