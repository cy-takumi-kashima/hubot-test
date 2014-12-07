# Description:
#   hello
#
# Notes:
#   はろー -> コンニチハ

module.exports = (robot) ->
    regex = new RegExp("^#{robot.name}.+?hello$", "i")
    robot.hear regex, (response) ->
        console.log(robot.name + " " + response.message.text)
        response.reply response.message.text