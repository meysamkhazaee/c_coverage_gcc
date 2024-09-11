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

# Create a new "output" folder
cd output
mkdir cbmc
cd cbmc
mkdir $BASENAME
cd $BASENAME
cd ../../..
cp $INPUT_FILE output/cbmc/$BASENAME
cd output/cbmc/$BASENAME

# goto-cc sample.c -o sample.gb
# goto-instrument sample.gb --dot sample.dot
# dot -Tpng sample.dot -o sample.png

goto-cc $INPUT_FILE -o $BASENAME.goto
# goto-analyzer --generate-cfg $BASENAME.goto > $BASENAME.dot
goto-instrument $BASENAME.goto --dot $BASENAME.dot
dot -Tpng $BASENAME.dot -o $BASENAME.png
