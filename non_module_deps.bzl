load("@@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
# -- load statements -- #

def _non_module_deps_impl(ctx):
  http_archive(
    name = "com_google_ukey2",
    urls = [
      "https://github.com/google/ukey2/archive/master.zip"
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

  nisaba_version = "main"
  http_archive(
      name = "com_google_nisaba",
      url = "https://github.com/google-research/nisaba/archive/refs/heads/%s.zip" % nisaba_version,
      strip_prefix = "nisaba-%s" % nisaba_version,
  )
  load("@com_google_nisaba//bazel:workspace.bzl", "nisaba_public_repositories")
  nisaba_public_repositories()
# -------------------------------------------------------------------------
# Protocol buffer matches (should be part of gmock and gtest, but not yet):
#   https://github.com/inazarenko/protobuf-matchers

  http_archive(
      name = "com_github_protobuf_matchers",
      urls = ["https://github.com/inazarenko/protobuf-matchers/archive/refs/heads/master.zip"],
      strip_prefix = "protobuf-matchers-master",
  )

# -- repo definitions -- #

non_module_deps = module_extension(implementation = _non_module_deps_impl)
