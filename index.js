const express = require('express');
const app = express();

app.get('/', async function (req, res) {
    const a = 'Andy';
    await res.send('Hello ' + a);
});

app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
})