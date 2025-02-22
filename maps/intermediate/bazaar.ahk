BAZAAR_DATA := Map(
    "easy", [BazaarEasy, ""],
    "impoppable", [BazaarImpoppable, "benjamin"],
)

BazaarEasy() {
    global TS := Map(
        "Dart", ["dart", [464, 540]],
        "Druid A", ["druid", [538, 540]],
        "Druid B", ["druid", [1172, 540]],
        "Sniper", ["sniper", [1488, 661]]
    )
    GeneralEasy()
}

BazaarImpoppable() {
    global TS := Map(
        "FarmA", ["farm", [1456, 332]],
        "FarmB", ["farm", [1456, 192]],
        "FarmC", ["farm", [1294, 193]],
        "VillageA", ["village", [1436, 455]],
        "VillageB", ["village", [1472, 554]],
        "AceA", ["ace", [1459, 648]],
        "AceB", ["ace", [1459, 732]],
        "AlchA", ["alch", [1381, 543]],
        "AlchB", ["alch", [1370, 863]],
        "DruidA", ["druid", [1186, 541]],
        "DruidB", ["druid", [1110, 540]],
        "DartA", ["dart", [312, 535]],
        "SniperA", ["sniper", [257, 603]],
        "SniperB", ["sniper", [256, 483]],
        "Hero", ["hero", [1262, 537]],
    )

    IntermediateImpoppable()
}
