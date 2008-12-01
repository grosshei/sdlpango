# Created by Tomas Chvatal (Scarabeus IV)
###############################################################################
# sdlpango/src/CMakeLists.txt
###############################################################################
INCLUDE_DIRECTORIES ( ${SDL_INCLUDE_DIR} ${Pango_INCLUDE_DIRS} )
LINK_LIBRARIES ( ${CMAKE_DL_LIBS} ${SDL_LIBRARY} ${Pango_LIBRARIES}
		SDLMain )
SET ( SRCS
	SDL_Pango.c SDL_Pango.h
)
ADD_LIBRARY ( ${APPNAME} SHARED ${SRCS} )
INSTALL ( TARGETS ${APPNAME}
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )

