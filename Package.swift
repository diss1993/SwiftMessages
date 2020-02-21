import PackageDescription

let package = Package (
    name: "SwiftMessages",
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
