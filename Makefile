# example2/Makefile
CXX=g++                                                  #compiler name
# CXXFLAGS=-std=c++14 -Wextra -Wpedantic -Wall -Werror -g  #options to pass
CXXFLAGS=-std=c++17 -Wextra -Wpedantic -Wall -Werror -g  #options to pass

main: main.o vec3.o ray.o sphere.o hitable_list.o hitable.o
	${CXX} ${CXXFLAGS} main.o vec3.o ray.o sphere.o hitable_list.o hitable.o -o main

main.o: main.cc
	${CXX} ${CXXFLAGS} -c main.cc

vec3.o: vec3.cc
	${CXX} ${CXXFLAGS} -c vec3.cc

ray.o: ray.cc
	${CXX} ${CXXFLAGS} -c ray.cc

hitable.o: hitable.cc
	${CXX} ${CXXFLAGS} -c hitable.cc

hitable_list.o: hitable_list.cc
	${CXX} ${CXXFLAGS} -c hitable_list.cc

sphere.o: sphere.cc
	${CXX} ${CXXFLAGS} -c sphere.cc

clean:
	rm ${OBJECTS} ${DEPENDS} ${EXEC}
	rm *.o
.PHONY: clean


