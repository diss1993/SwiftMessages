// swift-tools-version:5.3

import PackageDescription

let package = Package (
    name: "SwiftMessages",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "SwiftMessages",
            targets: ["SwiftMessages"]),
    ],
    targets: [
        .target(
            name: "SwiftMessages",
            path: "SwiftMessages")
    ]
)
