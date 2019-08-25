// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftPTV",
    platforms: [
       .macOS(.v10_13), .iOS(.v11),
    ],
    products: [
        .library(name: "SwiftPTV", targets: ["SwiftPTV"])
    ],
    targets: [
        .target(name: "SwiftPTV", path: "Classes")
    ]
)
