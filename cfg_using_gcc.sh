# mshadow: to use this bash script file you should install gcc compiler
# Change to the current directory
cd $PWD

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file.c>"
    exit 1
fi

INPUT_FILE=$1   # First argument: input C file

# Extract file name without extension
BASENAME=$(basename "$INPUT_FILE" .c)
cd output
mkdir gcc
cd gcc

if [ -d $BASENAME ]; then
    rm -rf $BASENAME
fi

mkdir $BASENAME
cd $BASENAME
cp ../../../../$INPUT_FILE output/$BASENAME

gcc -fprofile-arcs -ftest-coverage -fdump-tree-cfg -fdump-tree-all-graph -o $BASENAME $INPUT_FILE

# gcc -fdump-tree-all-graph sample.c -o sample
# gcc -fdump-tree-cfg -fdump-tree-vcg -fdump-tree-alias sample.c -o sample
# dot -T png sample.c.015t.cfg.dot -o cfg.png


find . -type f -name "*.dot" -exec sh -c 'dot -T png "{}" -o "{}.png"' \;