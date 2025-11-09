// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vk-ios-sdk",
    products: [
        .library(
            name: "vk-ios-sdk",
            targets: ["vk-ios-sdk"]),
    ],
    targets: [
        .target(
            name: "vk-ios-sdk",
            dependencies: [
            ],
            resources: [
                .copy("Resources"),
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("DynamicFramework"),
                .headerSearchPath("Sources"),
                .headerSearchPath("Sources/API"),
                .headerSearchPath("Sources/API/methods"),
                .headerSearchPath("Sources/API/models"),
                .headerSearchPath("Sources/API/upload"),
                .headerSearchPath("Sources/Core"),
                .headerSearchPath("Sources/Image"),
                .headerSearchPath("Sources/Utils"),
                .headerSearchPath("Sources/Views"),
            ]
        )
    ]
)