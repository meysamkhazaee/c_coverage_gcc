# Change to the current directory
cd $PWD

# Remove the "result" folder if it exists
if [ -d result ]; then
    rm -rf result
fi

# Create a new "result" folder
mkdir result
cp sample.c result/
cd result

gcc -fprofile-arcs -ftest-coverage -fdump-tree-cfg -fdump-tree-all-graph -o sample sample.c

# gcc -fdump-tree-all-graph sample.c -o sample
# gcc -fdump-tree-cfg -fdump-tree-vcg -fdump-tree-alias sample.c -o sample
# dot -T png sample.c.015t.cfg.dot -o cfg.png


find . -type f -name "*.dot" -exec sh -c 'dot -T png "{}" -o "{}.png"' \;