# Copyright (c) 2016-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

add_executable(
    beringei_client_test_bin

    BeringeiClientTest.cpp
    MockConfigurationAdapter.h
    RequestBatchingQueueTest.cpp
)
target_link_libraries(
    beringei_client_test_bin

    ${FOLLY_LIBRARIES}
    ${GFLAGS_LIBRARIES}
    ${GTEST_HARNESS_LIBS}
    ${LIBGLOG_LIBRARY}
    beringei_client
    beringei_core
)

add_test(beringei_client_tests beringei_client_test_bin)
