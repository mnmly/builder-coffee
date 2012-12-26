{exec} = require 'child_process'

task 'build', 'build', ->
  exec( "coffee -c #{ file }" ) for file in [ './index.coffee' ]
