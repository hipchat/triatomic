module.exports = (robot) ->

  robot.hear /pull request (.*)/i, (res) ->
    repo_name = escape(res.match[1])
    res.http("curl https://api.github.com/repos/SamShah20393/#{repo_name}/pulls")
      .get() (err, res, body) ->
        try
          json = JSON.parse(body)
          res.send "Working .."
        catch error
          res.send "No pull requests found on #{repo_name}"
