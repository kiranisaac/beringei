# Copyright (c) 2016-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

add_library(
    beringei_plugin STATIC

    BeringeiConfigurationAdapter.cpp
    BeringeiConfigurationAdapter.h
    BeringeiConfigurationLoader.cpp
    BeringeiConfigurationLoader.h
    BeringeiInternalConfiguration.h
)
target_link_libraries(
    beringei_plugin

    ${FOLLY_LIBRARIES}
    beringei_client
    beringei_core
    beringei_thrift
)

add_subdirectory(tests)
