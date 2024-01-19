package(default_visibility = ["//visibility:public"])
load("@crates//:defs.bzl", "aliases", "all_crate_deps")
load("@rules_rust//rust:defs.bzl", "rust_library","rust_proc_macro")
load("@rules_rust//cargo:defs.bzl", "cargo_build_script")

rust_library(
    name = "lib",
    aliases = aliases(),
    deps = all_crate_deps(
        normal = True,
    ),
    proc_macro_deps = all_crate_deps(
        proc_macro = True,
    ),
    srcs=["src/lib.rs", "build.rs"]
)
cargo_build_script(
    name = "build_script",
    srcs = ["build.rs"],
    # Optional data/tool dependencies
    deps = all_crate_deps(
        build = True,
    ),
    proc_macro_deps = all_crate_deps(
        build_proc_macro = True,
    ),
    data = glob(
        include = ["**/*.h", "src/main.rs"],
        exclude = [
            "**/* *",
            ".tmp_git_root/**/*",
            "BUILD",
            "BUILD.bazel",
            "WORKSPACE",
            "WORKSPACE.bazel",
        ],
    ),
    # data = ["src/main.rs","//connections:core.h"],
  #   compile_data = [
  #       "//connections:core",
  #       "//connections:core_types",
  #       "//internal/platform/implementation/linux",
  #
  # ]
)


rust_library(
    name = "connections",
    edition = "2021",
    deps = [
      ":build_script"
    ],
    srcs=["src/main.rs"]
)
