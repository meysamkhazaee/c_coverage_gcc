# mshadow: to use this bash script file you should install cbmc tools from github
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

goto-cc sample.c -o sample.gb
goto-instrument sample.gb --dot sample.dot
dot -Tpng sample.dot -o sample.png