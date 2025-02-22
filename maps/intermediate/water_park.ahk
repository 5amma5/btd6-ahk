WATER_PARK_DATA := Map(
    "easy", [WaterParkEasy, ""],
    "impoppable", [WaterParkImpoppable, "benjamin"],
)

WaterParkEasy() {
    global TS := Map(
        "Dart", ["dart", [1245, 529]],
        "Druid A", ["druid", [1033, 669]],
        "Druid B", ["druid", [1183, 500]],
        "Sniper", ["sniper", [407, 221]]
    )
    GeneralEasy()
}

WaterParkImpoppable() {
    global TS := Map(
        "AceA", ["ace", [925, 357]],
        "AceB", ["ace", [1048, 271]],
        "AlchA", ["alch", [1033, 394]],
        "AlchB", ["alch", [1008, 468]],
        "DartA", ["dart", [1244, 513]],
        "DruidA", ["druid", [1194, 470]],
        "DruidB", ["druid", [1040, 645]],
        "FarmA", ["farm", [728, 413]],
        "FarmB", ["farm", [728, 244]],
        "FarmC", ["farm", [890, 238]],
        "Hero", ["hero", [748, 518]],
        "SniperA", ["sniper", [612, 398]],
        "SniperB", ["sniper", [612, 460]],
        "VillageA", ["village", [915, 451]],
        "VillageB", ["village", [1098, 451]],
    )

    IntermediateImpoppable()
}