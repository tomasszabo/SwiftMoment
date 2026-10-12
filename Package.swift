// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftMoment",
    defaultLocalization: "en",
    platforms: [.iOS(.v15), .macOS(.v12), .tvOS(.v15), .watchOS(.v9)],
    products: [
        .library(name: "SwiftMoment", targets: ["SwiftMoment"]),
    ],
    dependencies: [
        // none
    ],
    targets: [
        .target(name: "SwiftMoment", path: "SwiftMoment/SwiftMoment", exclude: ["Info.plist"],
                resources: [.copy("MomentFromNow.bundle")]),
        .testTarget(name: "SwiftMomentTests", dependencies: ["SwiftMoment"], path: "SwiftMoment/SwiftMomentTests", exclude: ["Info.plist", "LinuxMain.swift"]),
    ],
    swiftLanguageModes: [.v6]
)
