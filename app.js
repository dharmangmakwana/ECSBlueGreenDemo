const express = require('express')
const app = express()
app.get('/', (req, res) => res.send("Hello Adani..! : Version 1.0.6"))
app.listen(3000, () => console.log('Server ready'))
