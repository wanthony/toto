express = require 'express'
app = express.createServer()

app.register '.coffee', require('coffeekup')
app.set 'view engine', 'coffee'

app.use express.static(__dirname + '/public')

app.get '/', (request, response) ->
  response.render 'index'

app.listen 
