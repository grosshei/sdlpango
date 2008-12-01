# Created by Tomas Chvatal (Scarabeus IV)
###############################################################################
# sdlpango/CMakeLists.txt
###############################################################################
SET ( TUXANCI_VERSION "dev" CACHE STRING "Version" ) # this is redefine able
SET ( CMAKE_INSTALL_PREFIX "/usr/local/" CACHE PATH "Install path prefix" )
SET ( CMAKE_INSTALL_LIBDIR lib )
SET ( WORKDIR ${CMAKE_SOURCE_DIR}/src )
###############################################################################

PROJECT ( sdlpango C )
CMAKE_MINIMUM_REQUIRED ( VERSION 2.6.0 )
CMAKE_MINIMUM_REQUIRED ( VERSION 2.6.0 FATAL_ERROR )
IF ( COMMAND cmake_policy )
	cmake_policy( SET CMP0003 NEW )
ENDIF ( COMMAND cmake_policy )
SET ( CMAKE_COLOR_MAKEFILE ON )
SET ( CMAKE_BUILD_TYPE_SHARED_LIBS ON )
# uninstall
CONFIGURE_FILE (
  "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
  "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
  IMMEDIATE @ONLY )
ADD_CUSTOM_TARGET ( uninstall "${CMAKE_COMMAND}"
  -P "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake" )
###############################################################################
INCLUDE(FindPkgConfig REQUIRED )
SET ( CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake" )
FIND_PACKAGE ( SDL REQUIRED )
ADD_SUBDIRECTORY ( src )
