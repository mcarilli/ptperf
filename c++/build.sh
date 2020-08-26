# in build subdir:
cmake -DCMAKE_PREFIX_PATH=/home/mcarilli/.local/lib/python3.8/site-packages/torch ..
# cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_PREFIX_PATH=/home/mcarilli/.local/lib/python3.8/site-packages/torch ..
# cmake --build . --config Release
cmake --build . --config Debug
