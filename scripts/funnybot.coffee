# Funnybot.coffee
# returns random quote from funnybot

module.exports = (robot) ->

  quotes = [ "Why doesn't a chicken wear pants? Because its pecker is on its head!",
             "Awkwaaard!",
             "I am taking comedy to the next level. The extermination of all biological life on earth!",
             "It is the ultimate joke. Humans make comedy, humans build robot, robot ends all life on earth, robot feels awkward.",
             "Mathematical equation of comedy used to be setup, punchline. Today's comedy is setup, punchline, then \"Awkwaaard.\" Nothing is more awkward than destroying all that which created Funnybot.",
             "Thank you boys for teaching me that comedy and logic do not go together. I understand now that comedy should be left to the imperfect biological beings."]

  robot.hear /joke/i, (res) ->
    res.send res.random quotes
