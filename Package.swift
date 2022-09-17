// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RegexOnMontereyDemo",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "RegexOnMontereyDemo",
            dependencies: [],
            swiftSettings: [
            // Regex Library requires macOS 13 when not using development toolchain
            .unsafeFlags(["-Xfrontend", "-disable-availability-checking"]),
            
            // `/.*/` syntax will not be enabled by default until Swift 6, `-enable-bare-slash-regex` allows you to not escape regex literals with `#/.*/#`
            .unsafeFlags(["-Xfrontend", "-enable-bare-slash-regex"]),
            
        ]),
        .testTarget(
            name: "RegexOnMontereyDemoTests",
            dependencies: ["RegexOnMontereyDemo"]),
    ]
)
