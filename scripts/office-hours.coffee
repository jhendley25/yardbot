# Description:
#   Becasue office hours are awesome   
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   office hours!
#
# Author:
#   Jhendley25

module.exports = (robot) ->
  robot.hear /office hours!/i, (msg) ->
    msg.send "are AWESOME! " + "http://memeshare.net/memes/11/10656.png"
