// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vk-ios-sdk",
    defaultLocalization: "ru",
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
                .process("Resources"),
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("DynamicFramework"),
                .headerSearchPath("Sources/vk-ios-sdk"),
            ]
        )
    ]
)