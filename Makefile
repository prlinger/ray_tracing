# example2/Makefile
CXX=g++                                                  #compiler name
CXXFLAGS=-std=c++14 -Wextra -Wpedantic -Wall -Werror -g  #options to pass

main: main.o vec3.o ray.o
	${CXX} ${CXXFLAGS} main.o vec3.o ray.o -o main

main.o: main.cc
	${CXX} ${CXXFLAGS} -c main.cc

vec3.o: vec3.cc
	${CXX} ${CXXFLAGS} -c vec3.cc

ray.o: ray.cc
	${CXX} ${CXXFLAGS} -c ray.cc

clean:
	rm ${OBJECTS} ${DEPENDS} ${EXEC}
	rm *.o
.PHONY: clean


