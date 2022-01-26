// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "AUv3SupportPackage",
  platforms: [.iOS(.v13), .macOS(.v10_15)],
  products: [
    .library(
      name: "AUv3-Support-Static",
      type: .static,
      targets: ["AUv3Support"]),
    .library(
      name: "AUv3-Support-iOS",
      type: .static,
      targets: ["AUv3Support_iOS"])
  ],
  targets: [
    .target(
      name: "AUv3Support",
      dependencies: [],
      exclude: [],
      resources: [.process("Resources")],
      swiftSettings: [
        .define("APPLICATION_EXTENSION_API_ONLY")
      ]
    ),
    .target(
      name: "AUv3Support_iOS",
      dependencies: ["AUv3Support"],
      exclude: [],
      resources: [.process("Resources")],
      swiftSettings: [
        .define("APPLICATION_EXTENSION_API_ONLY")
      ]
    ),
    .testTarget(
      name: "AUv3SupportTests",
      dependencies: []
    )
  ]
)
