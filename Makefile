BIN = meshimp
CC = g++
FLAGS = -DAPPLE -Wall -pedantic -mmacosx-version-min=10.5 -arch x86_64 -fmessage-length=0 -UGLFW_CDECL -fprofile-arcs -ftest-coverage
INC = -I common/include -I/sw/include -I/usr/local/include
LIB_PATH = common/osx_64/
LOC_LIB = $(LIB_PATH)libGLEW.a $(LIB_PATH)libglfw3.a $(LIB_PATH)libassimp.a
SYS_LIB = -lz
FRAMEWORKS = -framework Cocoa -framework OpenGL -framework IOKit
SRC = main.cpp maths_funcs.cpp gl_utils.cpp

all:
	${CC} ${FLAGS} ${FRAMEWORKS} -o ${BIN} ${SRC} ${INC} ${LOC_LIB} ${SYS_LIB}

