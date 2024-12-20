; copied from DarkDungeonsImpoppable(). may need to adjust
DarkDungeonsAlternate() {
    global TS := Map(
        "Ace A", ["ace", [1073, 663]],
        "Ace B", ["ace", [1027, 496]],
        "Alch A", ["alch", [1106, 593]],
        "Ben", ["hero", [721, 308]],
        "Dart A", ["dart", [725, 906]],
        "Dart B", ["dart", [244, 818]],
        "Dart C", ["dart", [1547, 431]],
        "Dart D", ["dart", [791, 910]],
        "Dart E", ["dart", [298, 379]],
        "Druid A", ["druid", [902, 1043]],
        "Druid B", ["druid", [1315, 1040]],
        "Druid C", ["druid", [247, 907]],
        "Druid D", ["druid", [893, 582]],
        "Druid E", ["druid", [899, 517]],
        "Druid F", ["druid", [784, 521]],
        "Farm A", ["farm", [1021, 652]],
        "Farm B", ["farm", [741, 644]],
        "Farm C", ["farm", [1061, 494]],
        "Farm F", ["farm", [369, 487]],         ; not in use - saving for potential use in future
        "Farm G", ["farm", [599, 485]],         ; not in use - saving for potential use in future
        "Sniper A", ["sniper", [1547, 166]],
        "Sniper B", ["sniper", [196, 159]],
        "Spike A", ["spike", [897, 530]],
        "Sub A", ["sub", [1392, 880]],
        "Village A", ["village", [881, 666]],
        "Village B", ["village", [770, 629]],
        "Village C", ["village", [989, 570]],
    )

    CheckDoubleCash()

    Place("Dart A", true)
    Place("Dart B", true)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)                ; First -> Strong
    Place("Dart C", true)
    
    StartGame()

    Place("Dart D",  true)
    Targeting("Dart D", 3)                  ; First -> Strong
    Place("Dart E", true)
    Place("Ben", true)
    Place("Sub A", true)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)                ; First -> Strong
    Place("Druid A", true)
    Upgrade("Druid A", 1, 0, 0, true)       ; 000 -> 100
    Targeting("Druid A", 3)                 ; First -> Strong
    Place("Farm A", true)
    UpdateMouseRest("Farm A")               ; Hover Farm A
    Place("Druid B", true)
    Place("Druid C", true)
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200
    Upgrade("Dart A", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Dart E", 0, 0, 3, true)
    Upgrade("Dart C", 0, 0, 3, true)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 -> 100
    Upgrade("Sniper B", 1, 0, 0, true)      ; 000 -> 100         
    Upgrade("Druid A", 0, 3, 0, true)       ; 100 -> 130
    Upgrade("Sniper A", 0, 2, 0, true)      ; 100 -> 120
    Targeting("Sniper A", 1, true)                ; Strong -> First
    Upgrade("Sniper B", 0, 2, 0, true)      ; 100 -> 120
    Targeting("Sniper B", 1, true)                ; Strong -> First
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200
    Sell("Dart B")
    Upgrade("Dart A", 0, 0, 1, true)        ; 003 -> 004
    Upgrade("Dart A", 0, 2, 0, true)        ; 004 -> 024
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A")               ; Hover Farm A
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    Place("Druid D", true)
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Place("Druid E", true)
    Upgrade("Druid E", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Druid E", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Village A", 0, 2, 0, true)     ; 002 -> 022

    WaitForRound(46)
    Place("Druid F", true)
    Upgrade("Druid F", 0, 3, 0, true)       ; 000 -> 030   
    Upgrade("Druid F", 1, 0, 0, true)       ; 030 -> 130
    Sell("Farm A")
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203
    Recenter("Ace A", 835, 18)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320
    Place("Farm C", true)
    UpdateMouseRest("Farm C")               ; Hover Farm C
    Upgrade("Farm C", 0, 0, 3, true)        ; 000 -> 003    
    Upgrade("Farm C", 0, 2, 0, true)        ; 003 -> 023   
    Upgrade("Druid F", 0, 1, 0, true)       ; 130 -> 140
    Upgrade("Village A", 0, 0, 1, true)     ; 002 -> 003
    Upgrade("Village A", 0, 0, 1, true)     ; 003 -> 004
    Upgrade("Farm B", 0, 0, 1, true)        ; 023 -> 024
    
    Upgrade("Alch A", 1, 0, 0, true)        ; 300 -> 420
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204
    Upgrade("Farm C", 0, 0, 1, true)        ; 023 -> 024

    WaitForRound(72)
    Sell("Druid A")
    Sell("Druid B")
    Sell("Druid C")
    Sell("Sniper A")
    Sell("Sniper B")
    Sell("Dart A")
    Sell("Druid E")
    Sell("Druid D")
    Upgrade("Druid F", 0, 1, 0, true)       ; 140 -> 150

    WaitForRound(77)
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205

    LeftTrap() {
        if defeated {
            return
        }
        Click(587, 366)
        Sleep(100)
    }

    RightTrap() {
        if defeated {
            return
        }
        Click(1083, 356)
        Sleep(100)
    }
  
}