// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DictionarySlicing",
    products: [
        .library(
            name: "DictionarySlicing",
            targets: ["DictionarySlicing"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DictionarySlicing",
            dependencies: []),
        .testTarget(
            name: "DictionarySlicingTests",
            dependencies: ["DictionarySlicing"]),
    ]
)
