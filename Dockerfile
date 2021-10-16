FROM openjdk:11

# install gcc and compile cmake
RUN apt-get update -y \
    && apt-get install build-essential libssl-dev g++ -y \
    && wget https://github.com/Kitware/CMake/releases/download/v3.21.3/cmake-3.21.3.tar.gz \
    && tar -xvf cmake-3.21.3.tar.gz \
    && cd cmake-3.21.3 \
    && ./bootstrap \
    && make \ 
    && make install \
    && which cmake \

