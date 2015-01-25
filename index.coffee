path = require 'path'

module.exports = (robot) ->
  src = path.resolve __dirname, 'src'
  robot.load src
