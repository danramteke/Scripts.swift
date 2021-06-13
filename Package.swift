// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "Scripts.swift",
    dependencies: [

    ],
    targets: [

        .executableTarget(
            name: "Scripts.swift",
            dependencies: ["ScriptsDescription"]),
        .target(
            name: "ScriptsDescription",
            dependencies: []),
        .testTarget(
            name: "Scripts.swiftTests",
            dependencies: ["Scripts.swift"]),
    ]
)
