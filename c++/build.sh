# in build subdir:
cmake -DCMAKE_PREFIX_PATH=/home/mcarilli/.local/lib/python3.8/site-packages/torch ..
# cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_PREFIX_PATH=/home/mcarilli/.local/lib/python3.8/site-packages/torch ..
# cmake --build . --config Release
cmake --build . --config Debug
# the fraction of occurrences of a given "func" (or unique call stack) is <f(sample)>
# where f(sample) is 1 if sample is in func (or unique call stack) and 0 if it isnt.
# Standard error of this mean decreases as sqrt of number of samples.
