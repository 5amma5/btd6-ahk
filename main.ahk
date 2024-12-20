#SingleInstance Force
#MaxThreadsPerHotkey 3
#Include %A_ScriptDir%

#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk

^!+j:: {
    ClearLogFile()
    LogMsg("Script started")
    Start()
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}

Start() {
    While WinActive(windowName) {
        Switch CheckMenuState() {
            Case "home":
                HomeMenu()
            Case "map_selection":
                MapSelection()
            Case "in_game","apopalypse":
                InGame()
            Case "collect":
                OpenBoxes()
            Case "event":
                Send("{Esc}")
                Sleep(1500)
            Case "victory":
                ClickImage("buttons\next")
            Case "victory_menu":
                ClickImage("buttons\home_victory", 2000)
            Case "defeat":
                ClickImage("buttons\home_defeat_1", 2000)
                ClickImage("buttons\home_defeat_2", 2000)
        }
    }
    LogMsg("Script stopped because the game window wasn't active")
}

HomeMenu() {
    CollectDailyReward()
    ClickImage("buttons\play_home")
}

CheckMenuState() {
    for state in states {
        if SearchImage("states\" state) {
            LogMsg(state)
            return state
        }
    }
    LogMsg("Menu state not recognized")
    Sleep(10000)
}

CheckSettings() {
    LogMsg("Checking quick settings")
    Send("{Esc}")
    Sleep(1500)
    if ClickImage("buttons\auto_start") {
        LogMsg("Enabled auto start")
    }
    if ClickImage("buttons\game_hints") {
        LogMsg("Disabled game hints")
    }
    if ClickImage("buttons\drag_and_drop") {
        LogMsg("Enabled drag & drop")
    }
    LogMsg("Quick settings checked")
    global changeSettings := false
    Send("{Esc}")
    Sleep(1500)
    return
}

InGame() {
    if difficulty == "impoppable" {
        Loop 2 {
            if ClickImage("buttons\ok", 1000, "*TransBlack", 900, 720, 1000, 790) {
                LogMsg("Game is about to start.")
                break
            }
            LogMsg("Ok button at start of game not found.")
            Sleep 2000
        }
    }
    if changeSettings {
        CheckSettings()
    }
    if currentMap[1] == 0 or currentMap[2] == 0 {
        Todo()
        return
    }
    global currentRound := STARTING_ROUNDS[difficulty]
    mapData := MAPS[currentMap[1]][currentMap[2]]
    if mapData[2].Has(difficulty) {
        mapData[2][difficulty][1]()
    } else {
        Todo()
    }
    if difficulty != "" {
        LogMsg("Waiting for the game to end...")
        WaitForVictoryOrDefeat()
    }
    global defeated := false
    global difficulty := ""
    global currentMap := [0, 0]
    global mouseRest := [30, 1]
    global currentRound := 0
    global toweropen := ""
    global menuside := ""
    global shopopen := false
    global double_cash := false
    global speed_adjust := false
    global allowPowers := powerSettings
}

OpenBoxes() {
    ScreenshotInstas()
    ClickImage("buttons\collect", 2000)
    LogMsg("Opening boxes")
    While !SearchImage("states\event") {
        for coords in ["683,535","900,550","897,535","900,550","1190,535","900,550","950,930"] {
            Click(coords)
            Sleep(1000)
        }
    }
}

CollectDailyReward(attempts := 3) {
    chestImg := "buttons\chest"
    closeBtn := "buttons\close_chest"
    closeAltBtn := "buttons\close_chestalt"

    loop attempts {
        if SearchImage(chestImg) {
            Click(x, y)
            LogMsg("Collecting daily reward")
            
            loop {
                Click()
                Sleep(200)
            } until ClickImage(closeBtn) || ClickImage(closeAltBtn)
        }
        Sleep(500)
    }
}
