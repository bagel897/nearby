# Copyright 2020 The Chromium Authors
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.


cc_library(
  name="local_device_data",
  srcs = [
    "nearby_share_device_data_updater.cc",
    "nearby_share_device_data_updater.h",
    "nearby_share_device_data_updater_impl.cc",
    "nearby_share_device_data_updater_impl.h",
    "nearby_share_local_device_data_manager.cc",
    "nearby_share_local_device_data_manager.h",
    "nearby_share_local_device_data_manager_impl.cc",
    "nearby_share_local_device_data_manager_impl.h",
  ],
  deps = [
    "//internal/base",
    # "//chrome/app:generated_resources",
    # "//chrome/app:generated_resources_grit",
    "//chrome/browser/nearby_sharing/client",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/logging",
    "//sharing/client",
    "//sharing/scheduling",
    "//components/cross_device/logging:logging",
    "//sharing/common:common",
    "//sharing/proto:share_cc_proto",
    "//ui/base",
    "//ui/chromeos",
  ],
)

cc_library(
  name="test_support",

  srcs = [
    "fake_nearby_share_device_data_updater.cc",
    "fake_nearby_share_device_data_updater.h",
    "fake_nearby_share_local_device_data_manager.cc",
    "fake_nearby_share_local_device_data_manager.h",
  ],

  deps = [
    ":local_device_data",
    "//internal/base",
    "//sharing/proto:share_cc_proto",
  ],
)

cc_test(
  name="unit_tests",
  srcs = [
    "nearby_share_device_data_updater_impl_unittest.cc",
    "nearby_share_local_device_data_manager_impl_unittest.cc",
  ],

  deps = [
    ":local_device_data",
    ":test_support",
    "//internal/base",
    "//internal/base/test:test_support",
    # "//chrome/app:generated_resources",
    # "//chrome/app:generated_resources_grit",
    "//chrome/browser/nearby_sharing/client",
    "//chrome/browser/nearby_sharing/client:test_support",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/common:test_support",
    "//sharing/client",
    "//sharing/scheduling",
    "//sharing/scheduling:test_support",
    "//components/sync_preferences:test_support",
    "//testing/gtest",
    "//sharing/proto:share_cc_proto",
    "//ui/base",
    "//ui/chromeos",
  ],
)
