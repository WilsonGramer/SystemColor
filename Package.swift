// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SystemColor",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "SystemColor", targets: ["SystemColor"]),
    ],
    targets: [
        .target(name: "SystemColor", path: "./Sources"),
    ]
)
