; copied directly from RavineImpoppable. only tested with double cash. variations needed for standard play
RavineAlternate() {
    global TS := Map(
        "Ace A", ["ace", [290, 753]],
        "Alch A", ["alch", [398, 767]],
        "Alch B", ["alch", [1077, 431]],
        "Ben", ["hero", [1004, 141]],
        "Boat A", ["boat", [739, 448]],
        "Boomer A", ["boomer", [1069, 330]],
        "Dart B", ["dart", [284, 662]],
        "Dart A", ["dart", [742, 796]],
        "Druid A", ["druid", [1069, 330]],
        "Druid B", ["druid", [287, 667]],
        "Druid C", ["druid", [751, 823]],
        "Farm A", ["farm", [110, 989]],
        "Farm B", ["farm", [272, 986]],
        "Farm C", ["farm", [441, 865]],
        "Heli A", ["heli", [708, 171]],
        "Ninja A", ["ninja", [223, 498]],
        "Ninja B", ["ninja", [861, 973]],
        "Spike A", ["spike", [591, 813]],
        "Sniper A", ["sniper", [662, 812]],
        "Sniper B", ["sniper", [1026, 200]],
        "Sniper C", ["sniper", [1087, 178]],
        "Village A", ["village", [182, 865]],
        "Village B", ["village", [301, 864]],
        "Village C", ["village", [487, 786]],
        "Village D", ["village", [855, 270]],
        "Village E", ["village", [738, 286]],
    )
    CheckDoubleCash()

    Place("Ninja A", true)
    Place("Dart B", true)
    Place("Dart A", true)
    Place("Ninja B", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C

    StartGame()
    
    WaitForRound(11)
    Place("Ben", true)
    
    WaitForRound(12)
    Place("Sniper A", true)                 ; First -> Strong
    Upgrade("Sniper A", 0, 2, 0, true)              ; 000 -> 020
    Targeting("Sniper A", 0, true)                  ; Camo Priority
    
    WaitForRound(14)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)                        ; First -> Strong
    Upgrade("Sniper B", 1, 0, 0, true)              ; 000 -> 100
    Upgrade("Sniper A", 0, 0, 2, true)              ; 020 -> 022
    Place("Sniper C", true)
    Upgrade("Sniper C", 1, 2, 0, true)              ; 000 -> 120 
    Targeting("Sniper C", 3, true)                  ; First -> Strong + Camo Priority

    WaitForRound(15)
    Place("Druid A", true)

    WaitForRound(16)
    Sell("Dart B")
    Place("Druid B", true)
    Upgrade("Druid A", 0, 3, 0, true)               ; 000 -> 030
    
    WaitForRound(21)
    Upgrade("Druid B", 1, 3, 0, true)               ; 000 -> 130
    
    WaitForRound(28)
    Upgrade("Druid A", 1, 0, 0, true)               ; 030 -> 130
    Place("Farm A", true)
    UpdateMouseRest("Farm A")                       ; Hover Farm A

    WaitForRound(29)
    Upgrade("Farm A", 2, 0, 0, true)                ; 000 -> 200
        
    WaitForRound(33)
    Sell("Dart A")
    Place("Druid C", true)
    Upgrade("Druid C", 0, 3, 0, true)               ; 000 -> 030

    WaitForRound(36)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")             ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(39)
    Upgrade("Sniper B", 0, 0, 3, true)              ; 100 -> 103
    
    WaitForRound(41)
    Upgrade("Sniper A", 0, 0, 1, true)              ; 022 -> 023

    WaitForRound(43)
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C
    Upgrade("Farm C", 0, 0, 3, true)                ; 000 -> 003
    UpdateMouseRest("Farm A", "Farm B")             ; Hover Farm A, B
    Upgrade("Farm C", 0, 2, 0, true)                ; 000 -> 023
    
    WaitForRound(46)
    Upgrade("Sniper B", 0, 0, 1, true)              ; 103 -> 104
    
    WaitForRound(48)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)             ; 000 -> 002
    Upgrade("Farm A", 0, 0, 3, true)                ; 200 -> 203
    UpdateMouseRest("Farm B")                       ; Hover Farm B
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)             ; 000 -> 002
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)                 ; 000 -> 003
    
    WaitForRound(50)
    Upgrade("Village B", 0, 2, 0, true)             ; 002 -> 022
    Upgrade("Farm B", 0, 0, 3, true)                ; 200 -> 203
    Upgrade("Ace A", 2, 0, 0, true)                 ; 003 -> 203
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)                ; 000 -> 320
    
    WaitForRound(60)
    Sell("Sniper A")
    Sell("Sniper B")
    Sell("Druid A")
    Upgrade("Ace A", 0, 0, 1, true)                 ; 203 -> 204
    Upgrade("Village B", 0, 0, 1, true)             ; 022 -> 023

    WaitForRound(65)
    Upgrade("Farm C", 0, 0, 1, true)                ; 023 -> 024
    
    WaitForRound(68)
    Upgrade("Farm A", 0, 0, 1, true)                ; 203 -> 024
    
    WaitForRound(71)
    Upgrade("Farm B", 0, 0, 1, true)                ; 203 -> 024
    Upgrade("Alch A", 1, 0, 0, true)                ; 320 -> 420
    Upgrade("Village B", 0, 0, 1, true)             ; 023 -> 024

    WaitForRound(73)
    Upgrade("Druid B", 0, 2, 0, true)               ; 130 -> 150
    
    WaitForRound(80)
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)                 ; 204 -> 205

}
