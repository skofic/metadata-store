// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CheckRefs",
    platforms: [.macOS(.v13)],
    targets: [
        .executableTarget(
            name: "check-refs",
            path: "Sources/CheckRefs"
        )
    ]
)
