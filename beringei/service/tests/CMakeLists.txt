# Copyright (c) 2016-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

add_executable(beringei_service_test_bin BeringeiServiceHandlerTest.cpp)

target_link_libraries(
    beringei_service_test_bin
    
    ${FOLLY_LIBRARIES}
    ${GFLAGS_LIBRARIES}
    ${GMOCK_HARNESS_LIBS}
    ${GTEST_HARNESS_LIBS}
    ${LIBGLOG_LIBRARY}
    beringei_client
    beringei_core
    beringei_plugin
    beringei_service
)

add_test(beringei_service_tests beringei_service_test_bin)
