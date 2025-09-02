// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ElegantCalendar",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ElegantCalendar",
            targets: ["ElegantCalendar"]
        ),
        .library(
            name: "ElegantPages",
            targets: ["ElegantPages"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ElegantPages",
            path: "Sources/ElegantPages"
        ),
        .target(
            name: "ElegantCalendar",
            dependencies: ["ElegantPages"],
            path: "Sources/ElegantCalendar"
        )
    ]
)
