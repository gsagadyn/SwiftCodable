// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftyCodable",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "SwiftyCodable", targets: ["SwiftyCodable"])
    ],
    targets: [
        .target(name: "SwiftyCodable", dependencies: [], path: "SwiftyCodable")
    ]
)
