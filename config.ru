require './app'
require './middlewares'

$stdout.sync = true

Middlewares.new(self)

run App
