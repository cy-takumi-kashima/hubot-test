# Description:
#   hello
#
# Notes:
#   はろー -> コンニチハ

lunches = [
  "代官山unice http://tabelog.com/tokyo/A1303/A130303/13029793/",
  "とんかつのげん田 http://tabelog.com/tokyo/A1303/A130303/13019799/",
  "煮込みDining Choi.s http://tabelog.com/tokyo/A1303/A130301/13138268/"
]

module.exports = (robot) ->
    regex = new RegExp("^#{robot.name}.+?today's lunch$", "i")
    robot.hear regex, (response) ->
        console.log(robot.name + " " + response.message.text)
        response.reply "today's lunch " + (response.random lunches)
