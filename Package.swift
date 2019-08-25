// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftPTV",
    products: [
        .library(name: "SwiftPTV", targets: ["SwiftPTV"])
    ],
    targets: [
        .target(name: "SwiftPTV", path: "Classes")
    ]
)
