// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "XenixcomCapacitorPluginAudioRecorderEngine",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "XenixcomCapacitorPluginAudioRecorderEngine",
            targets: ["RecorderEnginePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "RecorderEnginePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/RecorderEnginePlugin"),
        .testTarget(
            name: "RecorderEnginePluginTests",
            dependencies: ["RecorderEnginePlugin"],
            path: "ios/Tests/RecorderEnginePluginTests")
    ]
)
