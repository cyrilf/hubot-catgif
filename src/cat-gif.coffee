# Description:
#   Return a random cat gif (from thecatapi)
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot show me a cat - Random cat gif
#   hubot cat me        - Random cat gif
#
# Author:
#  cyrilf

module.exports = (robot) ->
  robot.respond /.*(cat me|show me a cat).*/i, (msg) ->
    msg.send 'http://thecatapi.com/api/images/get?format=src&type=gif'
