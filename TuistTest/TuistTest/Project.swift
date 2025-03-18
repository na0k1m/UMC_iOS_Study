import ProjectDescription

let project = Project(
    name: "TuistTest",
    packages: [.remote(url: "https://github.com/Alamofire/Alamofire.git", requirement: .upToNextMajor(from: "5.10.0"))],
    targets: [
        .target(
            name: "TuistTest",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistTest",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TuistTest/Sources/**"],
            resources: ["TuistTest/Resources/**"],
            dependencies: [.external(name: "Alamofire", condition: .none)]
        ),
        .target(
            name: "TuistTestTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistTestTests",
            infoPlist: .default,
            sources: ["TuistTest/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistTest")]
        ),
    ]
)
