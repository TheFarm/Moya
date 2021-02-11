// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Moya",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "Moya", targets: ["Moya"]),
        .library(name: "ReactiveMoya", targets: ["ReactiveMoya"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.1")),
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", .upToNextMajor(from: "6.5.0")),
    ],
    targets: [
        .target(name: "Moya", dependencies: ["Alamofire"], exclude: ["Supporting Files/Info.plist"]),
        .target(name: "ReactiveMoya", dependencies: ["Moya", "ReactiveSwift"]),
    ]
)
