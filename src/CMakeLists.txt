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
#SET(CMAKE_SHARED_LIBRARY_SONAME_C_FLAG "-Wl,-soname,libSDL_Pango.so.1") 
#SET(CMAKE_SHARED_LIBRARY_SONAME_CXX_FLAG "-Wl,-soname,libSDL_Pango.so.1")
ADD_LIBRARY ( SDL_Pango SHARED ${SRCS} )
SET_TARGET_PROPERTIES (SDL_Pango PROPERTIES VERSION 1.1.0 SOVERSION 1)
INSTALL ( TARGETS SDL_Pango
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )

