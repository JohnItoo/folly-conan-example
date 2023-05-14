FROM ubuntu:20.04

# Prepare build environment
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -qq -y install gcc g++ \
    cmake curl wget pkg-config \
    libtool
RUN apt-get -qq -y install python3
RUN apt-get -qq -y install python3-pip
RUN pip3 install conan==1.60.0

RUN mkdir folly-conan-example
COPY main.cpp folly-conan-example
COPY conanfile.txt folly-conan-example
COPY CMakeLists.txt folly-conan-example

RUN echo "*** Building an example ***" \
	&& cd folly-conan-example \
	&& mkdir build \
	&& cd build \
	&& conan install .. --build=missing \
	&& cmake .. \
	&& cmake --build . --config Release

