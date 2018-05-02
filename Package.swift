// swift-tools-version:4.0
import PackageDescription
let package = Package(
    name: "leaky-swifty-request",
    products: [
        .executable(name: "leaky-swifty-request", targets: ["leaky-swifty-request"])
        ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/SwiftyRequest.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "leaky-swifty-request", dependencies: ["SwiftyRequest"]),
    ]
)
