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

# Helper to generate random key
generateRandomKey = (length) ->
  key = ''
  available = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  for i in [0...length]
    key += available.charAt(Math.floor(Math.random() * available.length));

  return key

module.exports = (robot) ->
  robot.respond /.*(cat me|show me a cat).*/i, (msg) ->
    randomKey = '&' + generateRandomKey(5)
    msg.send 'http://thecatapi.com/api/images/get?format=src&type=gif' + randomKey
