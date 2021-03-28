LANG = {
  ["Intro"] = function ()
    print "-------------------------------"
    print "Чудище-умножатель и храбрый богатырь"
    print "v 1.0.0 by HerrOfTheLand"
    print "-------------------------------"
    print "Чудище-умножатель украл царевну тридесятого царства!"
    print "Помоги богатырю победить его."
    print "Когда чудище будет загадывать задачу, подскажи богатырю правильный ответ."
  end,

  ["RoundBegin"] = function ()
    print "-------------------------------"
  end,

  ["RoundEnd"] = function ()
    print()
  end,

  ["HealthBar"] = function (hero_health, beast_health)
    print ("Богатырь: " .. string.rep(">", hero_health) .. "|" .. string.rep("<", beast_health) .. " :Чудище")
  end,

  ["BeastProblem"] = function (a, b)
    print ("Чудище: Ну, сколько будет " .. a .. " * " .. b .. "?")
  end,

  ["GetNumber"] = function ()
    local answer = io.read "*number"
    if answer == nil then
      print "Чудище: Это даже не число!"
      io.read() -- trailing symbol fix
    end
    return answer
  end,

  ["BeastLose"] = function ()
    print "Чудище: Агрх... Правильно"
  end,

  ["BeastWin"] = function (answer)
    print ("Чудище: Хаха, неправильно. Правильный ответ: " .. answer)
  end,

  ["GameMessageBegin"] = function ()
    print "-------------------------------"
  end,

  ["GameMessageEnd"] = function ()
    print "-------------------------------"
  end,

  ["GameWin"] = function ()
    print "Молодец. Чудище больше не сможит никому навредить."
  end,

  ["GameLose"] = function ()
    print "Богатырь погиб. Попробуй снова."
  end,

  ["StartAgain"] = function ()
    print "Начать сначала? [да/Нет]"
  end,

  ["YesNo"] = function ()
    local yesno = (io.read "*line"):sub(1, 2)
    return yesno == "д" or yesno == "Д"
  end
}
