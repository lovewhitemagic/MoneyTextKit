// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MoneyTextKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MoneyTextKit",
            targets: ["MoneyTextKit"]
        ),
    ],
    targets: [
        .target(
            name: "MoneyTextKit",
            dependencies: []
        ),
        .testTarget(
            name: "MoneyTextKitTests",
            dependencies: ["MoneyTextKit"]
        ),
    ]
)
