LANG = {
  ["Intro"] = function ()
    print "-------------------------------"
    print "Beast-multiplier and brawe hero"
    print "v 1.0.0 by HerrOfTheLand"
    print "-------------------------------"
    print "The Beast-multiplier has stolen a princess of farfarland!"
    print "Help the hero to save her."
    print "When the Beast is asking a problem, give the right answer to him"
  end,

  ["RoundBegin"] = function ()
    print "-------------------------------"
  end,

  ["RoundEnd"] = function ()
    print()
  end,

  ["HealthBar"] = function (hero_health, beast_health)
    print ("Hero: " .. string.rep(">", hero_health) .. "|" .. string.rep("<", beast_health) .. " :Beast")
  end,

  ["BeastProblem"] = function (a, b)
    print ("Beast: Well, how much will " .. a .. " * " .. b .. " be?")
  end,

  ["GetNumber"] = function ()
    local answer = io.read "*number"
    if answer == nil then
      print "Beast: It's even not a number!"
      io.read() -- trailing symbol fix
    end
    return answer
  end,

  ["BeastLose"] = function ()
    print "Beast: Agrh... Right"
  end,

  ["BeastWin"] = function (answer)
    print ("Beast: Haha, wrong. The right answer is " .. answer)
  end,

  ["GameMessageBegin"] = function ()
    print "-------------------------------"
  end,

  ["GameMessageEnd"] = function ()
    print "-------------------------------"
  end,

  ["GameWin"] = function ()
    print "Well done. The Beast won't hurt anyone anymore."
  end,

  ["GameLose"] = function ()
    print "The hero is lost. Try again."
  end,

  ["StartAgain"] = function ()
    print "Play again? [Yes/No]"
  end,

  ["YesNo"] = function ()
    return (io.read "*line"):lower()[1] == "y"
  end
}
