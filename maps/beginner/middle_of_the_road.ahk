MIDDLE_OF_THE_ROAD_DATA := Map(
    "easy", [MiddleOfTheRoadEasy, ""]
)

MiddleOfTheRoadEasy() {
    global TS := Map(
        "Dart", ["dart", [469, 510]],
        "Druid A", ["druid", [652, 540]],
        "Druid B", ["druid", [988, 541]],
        "Sniper", ["sniper", [1342, 277]],
    )
    GeneralEasy()
}
