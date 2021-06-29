// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "KeenClientTD",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v11),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "KeenClientTD",
            targets: ["KeenClientTD"]),
    ],
    dependencies: [
    ],
    targets: [
      .target(
            name: "KeenClientTD",
            dependencies: [
            ],
            path: ".",
            exclude: [
                "KeenClient.xcodeproj/",
                //"KeenClient.xcworkspace/",
                "KeenClientExample/",
                "KeenClientTD.podspec",
                "KeenClientTests",
                "Library/Headers/OCMock/",
                "Library/libOCMock.a",
                "Makefile",
                "README.md",
                "docs",
                "generate_docs.sh",
            ],
            sources: [
                //"KeenClient/KeenClient.m",
                //"KeenClient/KeenConstants.m",
                //"KeenClient/KIOEventStore.m",
                //"KeenClient/KeenProperties.m",
                //"KeenClient/MF_Base64Additions.m",
                //"Library/sqlite-amalgamation/keen_io_sqlite3.c",
                "KeenClient/",
                "KeenClientInternal/",
                "Library/sqlite-amalgamation/",
            ],
            publicHeadersPath: "KeenClient",
            cxxSettings: [
                .headerSearchPath("Library/sqlite-amalgamation"),
                .headerSearchPath("KeenClient"),
                .headerSearchPath("KeenClient/Internal"),
            ]
        ),
    ],
    cxxLanguageStandard: .cxx1z
)