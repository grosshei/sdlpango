# Created by Tomas Chvatal (Scarabeus IV)
###############################################################################
# sdlpango/src/CMakeLists.txt
###############################################################################
FIND_PACKAGE ( pango REQUIRED)
MESSAGE ( "DIR: ${PANGOFT2_INCLUDE_DIR}" )
MESSAGE ( "LIB: ${PANGOFT2_LIBRARIES}" )
INCLUDE_DIRECTORIES ( ${SDL_INCLUDE_DIR} ${PANGOFT2_INCLUDE_DIR} )
LINK_LIBRARIES ( ${CMAKE_DL_LIBS} ${SDL_LIBRARY} ${PANGO_LIBRARIES}
		${PANGOFT2_LIBRARIES} SDLMain )
SET ( SRCS
	SDL_Pango.c SDL_Pango.h
)
ADD_LIBRARY ( ${APPNAME} SHARED ${SRCS} )
INSTALL ( TARGETS ${APPNAME}
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )

