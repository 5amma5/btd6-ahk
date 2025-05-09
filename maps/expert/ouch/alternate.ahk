; copied from OuchImpoppable(). may need to adjust
OuchAlternate() {
    global TS := Map(
        "Ace A", ["ace", [1536, 973]],
        "Alch A", ["alch", [1173, 1028]],
        "Alch B", ["alch", [1608, 1051]],
        "Ben", ["hero", [174, 673]],
        "Boat A", ["boat", [728, 467]],
        "Dart A", ["dart", [562, 326]],
        "Druid A", ["druid", [1462, 781]],
        "Druid B", ["druid", [1505, 836]],
        "Druid C", ["druid", [1404, 892]],
        "Druid D", ["druid", [1479, 898]],
        "Farm A", ["farm", [1181, 789]],
        "Farm B", ["farm", [1343, 789]],
        "Farm C", ["farm", [1168, 930]],
        "Ninja A", ["ninja", [666, 757]],
        "Spike A", ["spike", [1343, 789]],
        "Sniper A", ["sniper", [1127, 117]],
        "Sniper B", ["sniper", [1281, 987]],
        "Sniper C", ["sniper", [1339, 1035]],
        "Sub A", ["sub", [977, 612]],
        "Sub B", ["sub", [981, 546]],
        "Village A", ["village", [1309, 911]],
        "Village B", ["village", [1401, 976]],
    )
    
    Place("Dart A", true)
    Place("Sub A", true)
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002
    
    StartGame()
    
    Upgrade("Sub A", 2, 0, 1, true)         ; 000 -> 201
    Place("Ben", true)
    Place("Sniper A", true)
    Upgrade("Sniper A", 1, 1, 0, true)      ; 000 -> 110
    
    Upgrade("Sub A", 0, 0, 1, true)         ; 201 -> 202
    
    
    Place("Farm A", true)            
    UpdateMouseRest("Farm A")               ; Hover Farm A   
    
    Targeting("Sniper A", 3)                ; First -> Strong
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200
    
    Upgrade("Sub A", 0, 0, 1, true)         ; 202 -> 203
    
    Place("Farm B", true)               
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200

    Place("Farm C", true)               
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C
    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(22)
    Place("Boat A", true)                 
    Upgrade("Boat A", 0, 1, 0, true)        ; 000 -> 010
    Upgrade("Boat A", 1, 0, 0, true)        ; 010 -> 110
    Upgrade("Boat A", 0, 2, 0, true)        ; 110 -> 130 
    Upgrade("Boat A", 1, 0, 0, true)        ; 130 -> 230
    Place("Ninja A", true)

    Place("Village A", true)            
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002

    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A", "Farm C")     ; Hover Farm A, C

    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A")               ; Hover Farm A
    
                    
    Place("Sub B", true)                
    Upgrade("Sub B", 2, 0, 3, true)         ; 000 -> 203
    
    Place("Druid A", true)              
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    Place("Druid B", true)              
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130

    Place("Druid C", true)              
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130
    Place("Druid D", true)              
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130

    Place("Village B", true)            
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002

    Place("Sniper B", true)             
    Upgrade("Sniper B", 0, 3, 2, true)      ; 000 -> 032
    Place("Sniper C", true)             
    Targeting("Sniper C", 3)                ; First -> Strong
    Upgrade("Sniper C", 2, 0, 3, true)      ; 000 -> 203    
    Upgrade("Sub A", 0, 0, 1, true)         ; 203 -> 204
    Upgrade("Village B", 0, 2, 0, true)     ; 002 -> 022
    Upgrade("Sniper C", 0, 0, 1, true)      ; 203 -> 204   
    
    Upgrade("Village A", 0, 0, 2, true)     ; 002 -> 004
    Upgrade("Village A", 2, 0, 0, true)     ; 004 -> 204

    Upgrade("Sniper B", 0, 1, 0, true)      ; 032 -> 042
    UpdateMouseRest("Sniper B")             ; Hover Sniper B

    Place("Alch A", true)               
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320
    Ability("sniper", "1", "3")
            
    Upgrade("Sniper B", 0, 1, 0, true)      ; 042 -> 052
       
    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420          
                    
    Ability("sniper", "1", "3")         
    Place("Ace A", true)                  
    Upgrade("Ace A", 2, 0, 3, true)         ; 000 -> 203
    Ability("sniper", "1", "3")
    Place("Alch B", true)               
    Upgrade("Alch B", 3, 2, 0, true)        ; 000 -> 320
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204
    Ability("sniper", "1", "3")         
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204
    Ability("sniper", "1", "3")
    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204
    Ability("sniper", "1", "3")                 
    Upgrade("Farm C", 0, 0, 1, true)        ; 203 -> 204                   
    Ability("sniper", "1", "3")         
    Upgrade("Sniper C", 0, 0, 1, true)      ; 204 -> 205
    Ability("sniper", "1", "3")

    WaitForRound(78)
    Ability("sniper", "1", "3")         
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205
    Ability("sniper", "1", "3")
    Upgrade("Village B", 0, 1, 0, true)     ; 022 -> 032
    Ability("sniper", "1", "3")
}
