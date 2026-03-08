// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TermCards",
    platforms: [.macOS(.v13)],
    targets: [
        .executableTarget(
            name: "TermCards",
            path: "Sources/TermCards"
        )
    ]
)
