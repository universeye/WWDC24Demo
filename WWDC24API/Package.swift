// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WWDC24API",
    platforms: [.macOS(.v15), .iOS(.v18), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WWDC24API",
            targets: ["WWDC24API"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WWDC24API"),
        .testTarget(
            name: "WWDC24APITests",
            dependencies: ["WWDC24API"]
        ),
    ]
)
