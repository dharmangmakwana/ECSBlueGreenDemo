const express = require('express')
const app = express()
app.get('/', (req, res) => res.send("Hello World..! : Version 1.0.3"))
app.listen(3000, () => console.log('Server ready'))
