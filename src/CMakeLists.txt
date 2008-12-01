# Created by Tomas Chvatal (Scarabeus IV)
###############################################################################
# sdlpango/src/CMakeLists.txt
###############################################################################
INCLUDE_DIRECTORIES ( ${SDL_INCLUDE_DIR} ${Pango_INCLUDE_DIRS}
		${GLIB_INCLUDE_DIR}
		${Freetype_INCLUDE_DIRS} )
LINK_LIBRARIES ( ${CMAKE_DL_LIBS} ${SDL_LIBRARY} ${Pango_LIBRARIES}
		${Freetype_LIBRARIES} ${GLIB_LIBRARY}
		SDLMain )
SET ( SRCS SDL_Pango.c
)
ADD_LIBRARY ( ${APPNAME} SHARED ${SRCS} )
INSTALL ( TARGETS ${APPNAME}
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )

