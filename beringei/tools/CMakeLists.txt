# Copyright (c) 2016-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

add_executable(
    beringei_configuration_generator

    BeringeiConfigurationGenerator.cpp
)
target_link_libraries(
    beringei_configuration_generator

    ${FBTHRIFT_LIBRARIES}
    ${FOLLY_LIBRARIES}
    ${GFLAGS_LIBRARIES}
    ${LIBGLOG_LIBRARIES}
    Threads::Threads
    beringei_thrift
)

add_executable(
    beringei_put

    BeringeiPut.cpp
)
target_link_libraries(
    beringei_put

    ${FBTHRIFT_LIBRARIES}
    ${FOLLY_LIBRARIES}
    ${GFLAGS_LIBRARIES}
    ${LIBGLOG_LIBRARIES}
    Threads::Threads
    beringei_plugin
    beringei_thrift
)

add_executable(
    beringei_get

    BeringeiGet.cpp
)
target_link_libraries(
    beringei_get

    ${FBTHRIFT_LIBRARIES}
    ${FOLLY_LIBRARIES}
    ${GFLAGS_LIBRARIES}
    ${LIBGLOG_LIBRARIES}
    Threads::Threads
    beringei_plugin
    beringei_thrift
)

add_subdirectory(grafana_read_service)
