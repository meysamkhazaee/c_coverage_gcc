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

clang -S -emit-llvm sample.c -o sample.ll
opt -dot-cfg -disable-output -enable-new-pm=0 sample.ll
dot -Tpng -ofunction.png .main.dot