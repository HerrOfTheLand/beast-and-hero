LANG["Intro"]()

math.randomseed(os.time())

repeat
    -----------------
    local hero = {health=3}
    local beast = {health=10}
    -----------------

    while hero.health > 0 and beast.health > 0 do
        LANG["RoundBegin"]()

        LANG["HealthBar"](hero.health, beast.health)

        local a = math.random(1, 10)
        local b = math.random(1, 10)

        LANG["BeastProblem"](a, b)

        local answer = nil
        repeat
            answer = LANG["GetNumber"]()
        until answer ~= nil

        if answer == a * b then
            LANG["BeastLose"]()
            beast.health = beast.health - 1
        else
            LANG["BeastWin"](a * b)
            hero.health = hero.health - 1
        end
        
        LANG["RoundEnd"]()
    end
    
    LANG["GameMessageBegin"]()
    if hero.health == 0 then
      LANG["GameLose"]()
    else
      LANG["GameWin"]()
    end
    LANG["GameMessageEnd"]()

    LANG["StartAgain"]()

    io.read() -- trailing symbol fix
until not LANG["YesNo"]()
