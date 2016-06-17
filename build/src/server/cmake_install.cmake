# Install script for directory: /home/mangadul/kurento/trafic-count/traffic-count/src/server

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/libkmstraffic-countinterface.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kurento/modules/traffic-count" TYPE FILE FILES "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/interface/generated-cpp/traffic-count.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/kmstraffic-count.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkmstraffic-countimpl.so.0.0.1~0.g7feba31"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkmstraffic-countimpl.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkmstraffic-countimpl.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/libkmstraffic-countimpl.so.0.0.1~0.g7feba31"
    "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/libkmstraffic-countimpl.so.0"
    "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/libkmstraffic-countimpl.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkmstraffic-countimpl.so.0.0.1~0.g7feba31"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkmstraffic-countimpl.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkmstraffic-countimpl.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kurento/modules/traffic-count" TYPE FILE FILES
    "/home/mangadul/kurento/trafic-count/traffic-count/src/server/implementation/objects/traffic-countOpenCVImpl.hpp"
    "/home/mangadul/kurento/trafic-count/traffic-count/src/server/implementation/objects/traffic-countImpl.hpp"
    "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/implementation/generated-cpp/traffic-countImplFactory.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kurento/modules" TYPE MODULE FILES "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/libkmstraffic-countmodule.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so"
         OLD_RPATH "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kurento/modules/libkmstraffic-countmodule.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-3.5/Modules" TYPE FILE FILES "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/FindKMSTRAFFIC-COUNT.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/kurento/modules/traffic-count.kmd.json")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/kurento/modules" TYPE FILE FILES "/home/mangadul/kurento/trafic-count/traffic-count/build/src/server/kmd/traffic-count.kmd.json")
endif()

