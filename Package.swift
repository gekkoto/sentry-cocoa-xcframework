// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Defines variables to be updated via build process
let sentryXCFrameworkURL = "https://github.com/gekkoto/xcframeworks/releases/download/0.0.6/Sentry.xcframework.zip"
let sentryXCFrameworkChecksum = "e25814a875efe595b24e0a5fddd519b899aab129ab8e257673be90ae85fb4bc8"

let package = Package(
    name: "Sentry",
    platforms: [.iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(name: "Sentry", targets: ["Sentry"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "Sentry",
                      url: sentryXCFrameworkURL,
                      checksum: sentryXCFrameworkChecksum)
    ]
)
