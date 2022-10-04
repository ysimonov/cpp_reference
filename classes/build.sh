CWD=$(pwd)
DIR="${CWD}/build"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  echo "Building in ${DIR}..."
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} not found. Creating a new ${DIR} directory."
  mkdir ${DIR}
fi

# run cmake inside of build
cd ${DIR}
cmake ..
make