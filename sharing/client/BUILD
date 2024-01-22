# Copyright 2020 The Chromium Authors
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.


cc_library(
  name="client",
  srcs = [
    "nearby_share_client.h",
    "nearby_share_client_impl.cc",
    "nearby_share_client_impl.h",
    "nearby_share_http_notifier.cc",
    "nearby_share_http_notifier.h",
  ],

  deps = [
    "//base",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/logging",
    "//chromeos/ash/components/nearby/common/client",
    "//components/cross_device/logging:logging",
    "//components/signin/public/identity_manager",
    "//net",
    "//net/traffic_annotation",
    "//services/network/public/cpp",
    "//services/network/public/mojom",
    "//sharing/proto:share_cc_proto",
    "//url",
  ]
)

cc_library(
  name="test_support",
  srcs = [
    "fake_nearby_share_client.cc",
    "fake_nearby_share_client.h",
  ],
  deps = [
    ":client",
    "//base",
    "//chrome/browser/nearby_sharing/common",
    "//chromeos/ash/components/nearby/common/client",
    "//sharing/proto:share_cc_proto",
  ]
)

cc_test(
  name="unit_tests",
  srcs = [ "nearby_share_client_impl_unittest.cc" ],
  deps = [
    ":client",
    "//base",
    "//base/test:test_support",
    "//chrome/browser/nearby_sharing/common",
    "//chromeos/ash/components/nearby/common/client",
    "//components/signin/public/identity_manager:test_support",
    "//net",
    "//net/traffic_annotation:test_support",
    "//services/network:test_support",
    "//testing/gtest",
    "//sharing/proto:share_cc_proto",
  ],
)
