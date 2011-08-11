express = require 'express'
app = express.createServer()

app.register '.coffee', require('coffeekup')
app.set 'view engine', 'coffee'

app.use express.static(__dirname + '/public')

# Render the index layout
app.get '/', (request, response) ->
  response.render 'index', title: "Tasks"

# Listen for HTTP requests on port 3000
app.listen process.env.PORT or 3000, ->
  console.log "Listening on port #{process.env.PORT or 3000}"

