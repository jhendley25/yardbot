# Description:
#   Becasue rock climbing is awesome   
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot rock climbing!
#
# Author:
#   Jhendley25

module.exports = (robot) ->
  robot.hear /rock climbing!/i, (msg) ->
    imageMe msg, msg.match[3], (url) ->
      msg.send "IS AWESOME! " + url

imageMe = (msg, query, cb) ->
  random = Math.floor(Math.random()* 3) + 1
  if random == 1
    query = 'sierra blair-coyle climbing'
  else if random == 2
    query = 'chris sharma dyno'
  else
    query = 'sierra blair-coyle climbing'
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"