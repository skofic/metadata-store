// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "AssignRoles",
	platforms: [.macOS(.v13)],
	targets: [
		.executableTarget(
			name: "assign-roles",
			path: "Sources/assign-roles"
		)
	]
)
