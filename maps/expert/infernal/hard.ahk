; copied from InfernalImpoppable. may need to adjust
InfernalHard() {
    global TS := Map(
        "Ace A", ["ace", [1559, 586]],
        "Alch A", ["alch", [67, 491]],
        "Ben", ["hero", [1200, 845]],
        "Boat A", ["boat", [441, 860]],
        "Boat B", ["boat", [1173, 182]],
        "Boat C", ["boat", [1175, 263]],
        "Dart A", ["dart", [467, 280]],
        "Druid A", ["druid", [846, 385]],
        "Druid B", ["druid", [839, 695]],
        "Druid C", ["druid", [832, 788]],
        "Farm A", ["farm", [1559, 586]],
        "Sniper A", ["sniper", [147, 584]],
        "Sniper B", ["sniper", [62, 549]],
        "Sniper C", ["sniper", [132, 518]],
        "Sub A", ["sub", [473, 786]],
        "Village A", ["village", [90, 658]],
    )
    UpdateMouseRest("Farm A")
    CheckDoubleCash()

    Place("Dart A")
    Place("Sub A")

    StartGame()

    Upgrade("Sub A", 2, 0, 1, true)         ; 000 -> 201
    Place("Ben", true)
    Upgrade("Sub A", 0, 0, 1, true)         ; 201 -> 202
    Place("Farm A", true)

    Place("Sniper A", true)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 -> 100
    Targeting("Sniper A", 3)                ; First -> Strong
    Upgrade("Farm A", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Farm A", 0, 0, 1, true)        ; 002 -> 003
    Upgrade("Farm A", 0, 2, 0, true)        ; 003 -> 023
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002

    Place("Boat A", true)
    Upgrade("Boat A", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Boat A", 0, 0, 1, true)        ; 002 -> 003

    Place("Druid A", true)
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130

    Place("Boat B", true)
    Upgrade("Boat B", 0, 0, 2, true)        ; 000 -> 002


    Upgrade("Boat B", 0, 0, 1, true)        ; 002 -> 003

    
    Place("Boat C", true)
    Upgrade("Boat C", 0, 0, 3, true)        ; 000 -> 003

    
    Upgrade("Sub A", 0, 0, 1, true)         ; 202 -> 203

    
    Place("Druid B", true)
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130

    
    Place("Druid C", true)
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130

    
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002

    
    Place("Sniper B", true)
    Upgrade("Sniper B", 0, 2, 0, true)      ; 000 -> 020

    
    Upgrade("Sniper B", 0, 1, 2, true)      ; 020 -> 032

    
    Upgrade("Village A", 0, 0, 1, true)     ; 002 -> 003

    
    Upgrade("Sniper B", 0, 1, 0, true)      ; 032 -> 042
    UpdateMouseRest("Sniper B")

    
    Ability("Sniper B", "1", "2")

    
    Upgrade("Sniper B", 0, 1, 0, true)      ; 042 -> 052

    
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320

    
    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420

    
    Ability("Sniper B", "2", "2")
    Place("Sniper C", true)
    Targeting("Sniper C", 4)                ; First -> Elite
    Upgrade("Sniper C", 2, 0, 3, true)      ; 000 -> 203

    
    Upgrade("Sniper C", 0, 0, 1, true)      ; 203 -> 204

    
    Ability("Sniper B", "2", "2")
    Upgrade("Boat A", 0, 0, 1, true)        ; 003 -> 004

    
    Upgrade("Boat B", 0, 0, 1, true)        ; 003 -> 004

    
    Upgrade("Boat C", 0, 0, 1, true)        ; 003 -> 004

    
    Ability("Sniper B", "2", "2")
    Upgrade("Farm A", 0, 0, 1, true)        ; 023 -> 024

    
    Ability("Sniper B", "2", "2")

    WaitForRound(72)
    Upgrade("Sniper C", 0, 0, 1, true)      ; 204 -> 205
    Upgrade("Druid A", 1, 1, 0, true)       ; 130 -> 240
    Ability("Sniper B", "2", "2")
    Ability("Sniper B", "2", "2")
    Upgrade("Druid A", 0, 1, 0, true)       ; 240 -> 250
    Sell("Boat A")
    Sell("Boat B")
    Sell("Boat C")
    Sell("Farm A")
    Upgrade("Sniper A", 2, 0, 2, true)      ; 100 -> 302
    Sell("Village A")
    Place("Village A", true)
    Upgrade("Village A", 2, 3, 0, true)     ; 000 -> 230
    Upgrade("Sniper A", 2, 0, 0, true)      ; 302 -> 502
    Place("Ace A", true)
    Upgrade("Ace A", 0, 2, 4, true)       ; 000 -> 024
}