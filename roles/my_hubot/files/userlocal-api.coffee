module.exports = (robot) ->

  url = "https://chatbot-api.userlocal.jp/api/chat"
  api_key = "sample"

  robot.respond /(.*)/i, (msg) ->

    message = msg.match[1]
    params = {
      "message": message,
      "key": api_key
    }

    robot.http(url).query(params).get() (err, res, body) ->
      return res.send "Encountered an error :( #{err}" if err
      body = JSON.parse(body)
      msg.send "#{body.result}"
