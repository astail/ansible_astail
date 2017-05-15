module.exports = (robot) ->
  robot.respond /ls/, (msg) ->
    @exec = require('child_process').exec
    command = "sh /opt/hubot_slack/scripts/shell/ls.sh"
    msg.send "lsを表示します"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
  robot.respond /test (.*)/, (msg) ->
    @exec = require('child_process').exec
    command = "sh /opt/hubot_slack/scripts/shell/test.sh #{msg.match[1]} #{msg.match[2]}"
    @exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
  robot.respond /--help/, (msg) ->
    @exec = require('child_process').exec
    msg.send "deploy\n
      ls \n
      test $1 $2"
  robot.respond /おみくじ/i, (msg) ->
    msg.send msg.random ["大吉", "中吉", "小吉", "凶"]
