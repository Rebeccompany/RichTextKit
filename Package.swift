// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RichTextKit",
    platforms: [
        .iOS("16.0"),
        .macOS("13.0")
    ],
    products: [
        .library(
            name: "RichTextKit",
            targets: ["RichTextKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/danielsaidi/MockingKit.git", .upToNextMajor(from: "1.1.0"))
    ],
    targets: [
        .target(
            name: "RichTextKit",
            dependencies: []),
        .testTarget(
            name: "RichTextKitTests",
            dependencies: ["RichTextKit", "MockingKit"]),
    ]
)
