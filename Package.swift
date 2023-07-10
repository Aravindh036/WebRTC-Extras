// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "WebRTCExtras",
    products: [
        .library(
            name: "WebRTCExtras",
            targets: ["WebRTCExtras"]),
    ],
    targets: [
        .binaryTarget(name: "WebRTCExtras", path: "./Sources/WebRTCExtras/WebRTCExtras.xcframework")
    ]
)
