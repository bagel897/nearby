# Copyright 2020 The Chromium Authors
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.


cc_library(
  name = "certificates",
  srcs = [
    "common.cc",
    "common.h",
    "constants.cc",
    "constants.h",
    "nearby_share_certificate_manager.cc",
    "nearby_share_certificate_manager.h",
    "nearby_share_certificate_manager_impl.cc",
    "nearby_share_certificate_manager_impl.h",
    "nearby_share_certificate_storage.cc",
    "nearby_share_certificate_storage.h",
    "nearby_share_certificate_storage_impl.cc",
    "nearby_share_certificate_storage_impl.h",
    "nearby_share_decrypted_public_certificate.cc",
    "nearby_share_decrypted_public_certificate.h",
    "nearby_share_encrypted_metadata_key.cc",
    "nearby_share_encrypted_metadata_key.h",
    "nearby_share_private_certificate.cc",
    "nearby_share_private_certificate.h",
  ],
  deps = [
    "//internal/base",
    "//chrome/browser/nearby_sharing/client",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/contacts",
    "//chrome/browser/nearby_sharing/local_device_data",
    "//chrome/browser/nearby_sharing/logging",
    "//sharing/client",
    "//sharing/proto",
    "//sharing/scheduling",
    "//chromeos/ash/services/nearby/public/mojom",
    "//components/cross_device/logging:logging",
    "//components/leveldb_proto",
    "//components/prefs",
    "//crypto",
    "//device/bluetooth",
    "//sharing/proto:share_cc_proto",
    "//third_party/nearby:encrypted_metadata_proto",
    "//third_party/nearby:rpc_resrcs_proto",
  ]
)

cc_library(
  name="test_support",
  srcs = [
    "fake_nearby_share_certificate_manager.cc",
    "fake_nearby_share_certificate_manager.h",
    "fake_nearby_share_certificate_storage.cc",
    "fake_nearby_share_certificate_storage.h",
    "test_util.cc",
    "test_util.h",
  ],
  deps = [
    ":certificates",
    "//internal/base",
    "//sharing/proto",
    "//chromeos/ash/services/nearby/public/mojom",
    "//components/leveldb_proto",
    "//components/prefs",
    "//crypto",
    "//device/bluetooth/public/cpp",
    "//third_party/nearby:encrypted_metadata_proto",
    "//third_party/nearby:rpc_resrcs_proto",
    "//third_party/nearby:timestamp_proto",
  ]
)
cc_test(
  name="unit_tests",

  srcs = [
    "common_unittest.cc",
    "nearby_share_certificate_manager_impl_unittest.cc",
    "nearby_share_certificate_storage_impl_unittest.cc",
    "nearby_share_decrypted_public_certificate_unittest.cc",
    "nearby_share_private_certificate_unittest.cc",
  ],

  deps = [
    ":certificates",
    ":test_support",
    "//internal/base",
    "//internal/base/test:test_support",
    "//chrome/browser/nearby_sharing/client:test_support",
    "//chrome/browser/nearby_sharing/common",
    "//chrome/browser/nearby_sharing/common:test_support",
    "//chrome/browser/nearby_sharing/contacts:test_support",
    "//chrome/browser/nearby_sharing/local_device_data:test_support",
    "//sharing/client",
    "//sharing/proto",
    "//sharing/scheduling:test_support",
    "//chromeos/ash/services/nearby/public/mojom",
    "//components/leveldb_proto:test_support",
    "//components/prefs:test_support",
    "//crypto",
    "//device/bluetooth",
    "//device/bluetooth:mocks",
    "//testing/gtest",
    "//third_party/nearby:rpc_resrcs_proto",
  ],
)
