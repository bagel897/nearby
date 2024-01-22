# Copyright 2020 The Chromium Authors
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.


cc_library(
  name="contacts",
  srcs = [
    "nearby_share_contact_downloader.cc",
    "nearby_share_contact_downloader.h",
    "nearby_share_contact_downloader_impl.cc",
    "nearby_share_contact_downloader_impl.h",
    "nearby_share_contact_manager.cc",
    "nearby_share_contact_manager.h",
    "nearby_share_contact_manager_impl.cc",
    "nearby_share_contact_manager_impl.h",
    "nearby_share_contacts_sorter.cc",
    "nearby_share_contacts_sorter.h",
  ],
  deps = [
    "//internal/base",
    "//chrome/browser/nearby_sharing/client",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/local_device_data",
    "//chrome/browser/nearby_sharing/logging",
    "//sharing/client",
    "//sharing/scheduling",
    "//chromeos/ash/services/nearby/public/mojom",
    "//components/cross_device/logging:logging",
    "//components/prefs",
    "//crypto",
    "//sharing/proto:share_cc_proto",
  ]
)

cc_library(
  name="test_support",

  srcs = [
    "fake_nearby_share_contact_downloader.cc",
    "fake_nearby_share_contact_downloader.h",
    "fake_nearby_share_contact_manager.cc",
    "fake_nearby_share_contact_manager.h",
  ],

  deps = [
    ":contacts",
    "//internal/base",
    "//sharing/proto:share_cc_proto",
  ]
)

cc_test(
  name="unit_tests",

  srcs = [
    "nearby_share_contact_downloader_impl_unittest.cc",
    "nearby_share_contact_manager_impl_unittest.cc",
    "nearby_share_contacts_sorter_unittest.cc",
  ],

  deps = [
    ":contacts",
    ":test_support",
    "//internal/base",
    "//internal/base/test:test_support",
    "//chrome/browser/nearby_sharing/client",
    "//chrome/browser/nearby_sharing/client:test_support",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/common:test_support",
    "//chrome/browser/nearby_sharing/local_device_data:test_support",
    "//sharing/client",
    "//sharing/scheduling",
    "//sharing/scheduling:test_support",
    "//chromeos/ash/services/nearby/public/mojom",
    "//components/sync_preferences:test_support",
    "//content/test:test_support",
    "//testing/gtest",
    "//sharing/proto:share_cc_proto",
  ]
)
