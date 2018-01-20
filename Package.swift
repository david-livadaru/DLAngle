// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DLAngle",
    products: [
        .library(
            name: "DLAngle",
            targets: ["DLAngle"])
    ],
    dependencies: [
        .package(url: "https://github.com/davidlivadaru/DLInterval.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "DLAngle",
            dependencies: ["DLInterval"]),
        .testTarget(
            name: "DLAngleTests",
            dependencies: ["DLAngle", "DLInterval"])
    ]
)
