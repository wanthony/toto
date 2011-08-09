fs = require 'fs'
exec = require('child_process').exec

task 'build', 'rebuild all *.coffee files to JS', (options) ->
  exec 'coffee -c *.coffee'
