LAST_RESORT_DATA := Map(
    ; "easy", [LastResortEasy, ""]
)

; Placements were taken from another strat using GeneralEasy. Need to adjust tower coords to work with map.
LastResortEasy() {
    global TS := Map(
        "Dart", ["dart", [975, 435]],
        "Druid A", ["druid", [1099, 360]],
        "Druid B", ["druid", [980, 552]],
        "Sniper", ["sniper", [1154, 567]]
    )
    GeneralEasy()
}
