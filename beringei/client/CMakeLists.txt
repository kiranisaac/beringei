# Copyright (c) 2016-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

add_library(
    beringei_client STATIC

    BeringeiClient.cpp
    BeringeiClient.h
    BeringeiClientImpl.cpp
    BeringeiClientImpl.h
    BeringeiConfigurationAdapterIf.h
    BeringeiNetworkClient.cpp
    BeringeiNetworkClient.h
    RequestBatchingQueue.cpp
    RequestBatchingQueue.h
)
target_link_libraries(
    beringei_client

    ${FOLLY_LIBRARIES}
    beringei_core
    beringei_thrift
)

add_subdirectory(tests)
