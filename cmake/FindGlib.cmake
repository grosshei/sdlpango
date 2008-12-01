#------------------------------------------------------------------------------
# Desc:
#
# Copyright (c) 2007 Novell, Inc. All Rights Reserved.
#
# This program and the accompanying materials are made available 
# under the terms of the Eclipse Public License v1.0 which
# accompanies this distribution, and is available at 
# http://www.eclipse.org/legal/epl-v10.html
#
# To contact Novell about this file by physical or electronic mail, 
# you may find current contact information at www.novell.com.
#
# $Id$
#
# Author: Andrew Hodgkinson <ahodgkinson@novell.com>
#------------------------------------------------------------------------------
# Include the local modules directory
set( CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/CMakeModules")
# Locate GLib files
if( NOT GLIB_FOUND)
        find_path( GLIB_INCLUDE_DIR glib.h 
                PATHS /usr/include 
                                /opt/gnome/include 
                PATH_SUFFIXES glib-2.0)
                
        find_path( GLIB_CONFIG_INCLUDE_DIR glibconfig.h 
                PATHS /usr/include 
                                /opt/gnome/include 
                                /opt/gnome/lib
								/usr/lib64/
								/usr/lib/
                PATH_SUFFIXES /glib-2.0/include)
                
        find_library( GLIB_LIBRARY 
                NAMES glib-2.0 libglib
                PATHS /usr/lib 
                                /usr/local/lib 
                                /opt/gnome/lib)
                
        if( GLIB_INCLUDE_DIR AND GLIB_CONFIG_INCLUDE_DIR AND GLIB_LIBRARY)
                set( GLIB_FOUND TRUE)
                set( GLIB_INCLUDE_DIRS ${GLIB_INCLUDE_DIR})
                list( APPEND GLIB_INCLUDE_DIRS ${GLIB_CONFIG_INCLUDE_DIR})
        endif( GLIB_INCLUDE_DIR AND GLIB_CONFIG_INCLUDE_DIR AND GLIB_LIBRARY)
        if( GLIB_FOUND)
                if( NOT GLIB_FIND_QUIETLY)
                        message( STATUS "Found GLib library: ${GLIB_LIBRARY}")
                        message( STATUS "Found GLib inc dirs: ${GLIB_INCLUDE_DIRS}")
                endif( NOT GLIB_FIND_QUIETLY)
        else( GLIB_FOUND)
                if( GLIB_FIND_REQUIRED)
                        message( FATAL_ERROR "Could not find GLib")
                else( GLIB_FIND_REQUIRED)
                        if( NOT GLIB_FIND_QUIETLY)
                                message( STATUS "Could not find GLib")
                        endif( NOT GLIB_FIND_QUIETLY)
                endif( GLIB_FIND_REQUIRED)
        endif( GLIB_FOUND)
endif( NOT GLIB_FOUND)
