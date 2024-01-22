load("@@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_pkg_config//:pkg_config.bzl", "pkg_config")
# -- load statements -- #

def _non_module_deps_impl(ctx):
    http_archive(
        name = "com_google_ukey2",
        urls = [
            "https://github.com/google/ukey2/archive/master.zip",
        ],
        strip_prefix = "ukey2-master",
    )

    http_archive(
        name = "aappleby_smhasher",
        strip_prefix = "smhasher-master",
        build_file_content = """
package(default_visibility = ["//visibility:public"])
cc_library(
  name = "libmurmur3",
  srcs = ["src/MurmurHash3.cpp"],
  hdrs = ["src/MurmurHash3.h"],
  copts = ["-Wno-implicit-fallthrough"],
  licenses = ["unencumbered"],  # MurmurHash is explicity public-domain
)""",
        urls = ["https://github.com/aappleby/smhasher/archive/master.zip"],
    )
    http_archive(
        name = "com_google_webrtc",
        build_file_content = """
  package(default_visibility = ["//visibility:public"])
  """,
        urls = ["https://webrtc.googlesource.com/src/+archive/main.tar.gz"],
    )
    # ----------------------------------------------
    # Nisaba: Script processing library from Google:
    # ----------------------------------------------
    # We depend on some of core C++ libraries from Nisaba and use the fresh code
    # from the HEAD. See
    #   https://github.com/google-research/nisaba

    http_archive(
        name = "com_google_nisaba",
        url = "https://github.com/google-research/nisaba/archive/refs/heads/%s.zip" % "main",
        strip_prefix = "nisaba-%s" % "main",
    ) 
    http_archive(
        name = "com_google_protobuf",
        strip_prefix = "protobuf-3.19.6",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.19.6.tar.gz"],
    )


    # -------------------------------------------------------------------------
    # Protocol buffer matches (should be part of gmock and gtest, but not yet):
    #   https://github.com/inazarenko/protobuf-matchers

    http_archive(
        name = "com_github_protobuf_matchers",
        urls = ["https://github.com/inazarenko/protobuf-matchers/archive/refs/heads/master.zip"],
        strip_prefix = "protobuf-matchers-master",
    )

def _pkg_deps(ctx):
    pkg_config(
        name = "libsystemd",
        pkg_name = "libsystemd",
    )

    pkg_config(
        name = "libcurl",
        pkg_name = "libcurl",
    )

    pkg_config(
        name = "sdbus_cpp",
        pkg_name = "sdbus-c++",
    )

# -- repo definitions -- #

non_module_deps = module_extension(implementation = _non_module_deps_impl)
pkg_deps = module_extension(implementation = _pkg_deps)
