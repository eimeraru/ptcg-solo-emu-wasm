// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "PTCGSoloEmu",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "PTCGSoloEmu", targets: ["PTCGSoloEmu"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.6.1")
    ],
    targets: [
        .target(
            name: "PTCGSoloEmu",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "PTCGSoloEmuTests",
            dependencies: ["PTCGSoloEmu"]),
    ]
)