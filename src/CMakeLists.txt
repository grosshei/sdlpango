# Created by Tomas Chvatal (Scarabeus IV)
###############################################################################
# sdlpango/src/CMakeLists.txt
###############################################################################
INCLUDE_DIRECTORIES ( ${SDL_INCLUDE_DIR} ${Pango_INCLUDE_DIRS}
		${GLIB_INCLUDE_DIRS}
		${Freetype_INCLUDE_DIRS} )
LINK_LIBRARIES ( ${CMAKE_DL_LIBS} ${SDL_LIBRARY} ${Pango_LIBRARIES}
		${Freetype_LIBRARIES} ${GLIB_LIBRARY} )
SET ( SRCS SDL_Pango.c
)
SET(CMAKE_SHARED_LIBRARY_C_FLAGS "-fPIC")
SET(CMAKE_STATIC_LIBRARY_C_FLAG "-Wl," )
ADD_LIBRARY ( pango-shared SHARED ${SRCS} )
ADD_LIBRARY ( pango-static STATIC ${SRCS} )
SET_TARGET_PROPERTIES(pango-shared pango-static PROPERTIES OUTPUT_NAME SDL_Pango)
SET_TARGET_PROPERTIES (pango-shared PROPERTIES VERSION ${SDLPANGO_VERSION} SOVERSION ${SDLPANGO_MAJOR})
SET_TARGET_PROPERTIES(pango-shared PROPERTIES VERSION "${LIBPANGO_VERSION}")
SET_TARGET_PROPERTIES(pango-shared PROPERTIES SOVERSION "${LIBPANGO_MAJOR}")
INCLUDE(../cmake/MacroCreateLibtoolFile.cmake)
CREATE_LIBTOOL_FILE(pango-shared lib)
INSTALL ( TARGETS pango-shared
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )
INSTALL ( TARGETS pango-static
	ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR} )


