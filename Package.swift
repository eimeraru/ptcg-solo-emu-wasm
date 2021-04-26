// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "PTCGSoloEmu",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "PTCGSoloEmu", targets: ["PTCGSoloEmu"])
    ],
    dependencies: [
        .package(name: "Tokamak",
                 url: "https://github.com/TokamakUI/Tokamak",
                 from: "0.6.1"),
        .package(name: "PTCGPlayerBoard",
                 url: "https://github.com/evdwarf/ptcg-player-board",
                 from: "0.0.1"),
        .package(name: "TokamakHTMLFunctionBuilder",
                 url: "https://github.com/evdwarf/tokamak-html-function-builder",
                 from: "0.0.2"),
        .package(name: "Closswift",
                 url: "https://github.com/evdwarf/closswift",
                 from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "PTCGSoloEmu",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak"),
                "PTCGPlayerBoard",
                "TokamakHTMLFunctionBuilder",
                "Closswift"
            ]),
        .testTarget(
            name: "PTCGSoloEmuTests",
            dependencies: ["PTCGSoloEmu"]),
    ]
)
