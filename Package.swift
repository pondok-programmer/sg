// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sg",
    platforms: [
        .macOS(.v10_11)
    ],
    dependencies: [
        .package(url: "https://github.com/muizidn/SwiftGit2", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "sg",
            dependencies: ["SgLib"]),
        .target(
            name: "SgLib",
            dependencies: ["SwiftGit2"]),
        .testTarget(
            name: "sgTests",
            dependencies: ["sg"]),
    ]
)