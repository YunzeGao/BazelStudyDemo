load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
package(default_visibility = ["//visibility:public"])

ios_application(
    name = "DemoOC",
    bundle_id = "DemoOC",
    launch_storyboard = "DemoOC/*.storyboard",
    families = [
        "iphone",
    ],
    minimum_os_version = "14.0",
    infoplists = ["DemoOC/Info.plist"],
    deps = ["ios-app"],
)

objc_library(
    name = "ios-app",
    srcs = glob([
         "DemoOC/**/*.m",
         "DemoOC/**/*.h",
    ]),
)