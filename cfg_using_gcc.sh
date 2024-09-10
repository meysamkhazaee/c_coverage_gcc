# mshadow: to use this bash script file you should install gcc compiler
# Change to the current directory
cd $PWD

# Remove the "output" folder if it exists
if [ -d output ]; then
    rm -rf output
fi

read -p "Enter the input 'C' file name: " input_file
read -p "Enter the output folder name: " output_name

# Create a new "output" folder
mkdir output
cd output
mkdir $output_name
cd $output_name
cd ../..
cp $input_file output/$output_name
cd output/$output_name

gcc -fprofile-arcs -ftest-coverage -fdump-tree-cfg -fdump-tree-all-graph -o $output_name $input_file

# gcc -fdump-tree-all-graph sample.c -o sample
# gcc -fdump-tree-cfg -fdump-tree-vcg -fdump-tree-alias sample.c -o sample
# dot -T png sample.c.015t.cfg.dot -o cfg.png


find . -type f -name "*.dot" -exec sh -c 'dot -T png "{}" -o "{}.png"' \;