// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SamplePackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SamplePackage",
            targets: ["SamplePackage", "App", "Flutter","FlutterPluginRegistrant","test_plugin"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SamplePackage"),
        
            .binaryTarget(name: "App", url: "https://github.com/imJustik/SamplePackage/releases/download/0.0.1/App.xcframework.zip", checksum: "b49faec341ec057b4de7148a7f2838e202675620a0956b389cf30138439b43c0"),
            
            .binaryTarget(name: "Flutter", url: "https://github.com/imJustik/SamplePackage/releases/download/0.0.1/Flutter.xcframework.zip", checksum: "2bca72b1fcdab5713ff8b52c2c509b104ce1c8f3c3e5cb735bbab98d78282cbb"),
            
            .binaryTarget(name: "FlutterPluginRegistrant", url: "https://github.com/imJustik/SamplePackage/releases/download/0.0.1/FlutterPluginRegistrant.xcframework.zip", checksum: "4d722988ac2685c391f56f07b1a7e7fc3e2cee38094ab4a0b1b16048eeb14207"),
            
            .binaryTarget(name: "test_plugin", url: "https://github.com/imJustik/SamplePackage/releases/download/0.0.1/test_plugin.xcframework.zip", checksum: "a0634c433cf07872dcc80f0cca344513599faf4ba9574d922dd9e98af9e948d1"),
        
        
        .testTarget(
            name: "SamplePackageTests",
            dependencies: ["SamplePackage"]),
    ]
)
