// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ReusableView",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "ReusableView",
            targets: ["ReusableView"]
        )
    ],
    targets: [
        .target(
            name: "ReusableView",
            dependencies: []
        ),
        .testTarget(
            name: "ReusableViewTests",
            dependencies: ["ReusableView"]
        )
    ]
)
