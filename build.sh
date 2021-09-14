set -e

export ROOT_DIR=$(pwd)
export BIN_DIR=$ROOT_DIR/bin

mkdir -p $BIN_DIR
cd $BIN_DIR
conan install ../
cmake ../
cmake --build .
cmake --build . --target package
ctest .
cpack .
