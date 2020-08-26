if [ -z "$1" ]
  then
    echo "Must supply /path/to/appname"
    exit 1
fi

if [ "$#" -ne 2 ]; then
    method="dwarf,16384"
else
    method=$2
fi

echo "User-space stack unwinding method: " $method

source /home/mcarilli/.cudaenv.sh
FG=/home/mcarilli/Dropbox/testing/torch_perf/FlameGraph
perf record --call-graph $method $1
perf script | ${FG}/stackcollapse-perf.pl > out${method}.perf-folded
${FG}/flamegraph.pl out${method}.perf-folded > perf-kernel${method}.svg
