# mshadow: to use this bash script file you should install gcc compiler
# Change to the current directory
cd $PWD

# Remove the "result" folder if it exists
if [ -d result ]; then
    rm -rf result
fi

# Create a new "result" folder
mkdir result
cp sample.c input1.txt result/
cd result

# Build the code without coverage and instrumentation
gcc -o not_cover_and_not_instrument.exe sample.c
./not_cover_and_not_instrument.exe input1.txt > run_result.txt

# Move all files in the current directory to the new subfolder, except for the excluded file
for file in $(ls); do
  if [[ ! -d "not_cover_and_not_instrument" ]]; then
    # Create the directory
    mkdir "not_cover_and_not_instrument"
  fi
  if [[ "$file" != "sample.c" ]] && [[ "$file" != "input1.txt" ]] && [[ "$file" != "not_cover_and_not_instrument/" ]]; then
    mv "$file" "not_cover_and_not_instrument"
  fi
done

rm input1.txt
cd ..
cp input2.txt result/
cd result
# Build the code with coverage and without instrumentation
gcc -o cover_and_not_instrument.exe sample.c --coverage
./cover_and_not_instrument.exe input2.txt > run_result2.txt
gcov sample.c
gcovr -r . --html-details -o coverage_report_coverage_and_noinstrument.html
gcovr --print-summary --object-directory . > coverage_report.txt

# Move all files in the current directory to the new subfolder, except for the excluded file
for file in $(ls); do
  if [[ ! -d "cover_and_not_instrument" ]]; then
    # Create the directory
    mkdir "cover_and_not_instrument"
  fi
  if [[ "$file" != "sample.c" ]] && [[ "$file" != "input2.txt" ]] && [[ "$file" != "not_cover_and_not_instrument" ]] && [[ "$file" != "cover_and_not_instrument" ]]; then
    mv "$file" "cover_and_not_instrument"
  fi
done

rm input2.txt
cd ..
cp input3.txt result/
cd result
# Build the code with coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o cover_and_instrument.exe sample.c
./cover_and_instrument.exe input3.txt > run_result3.txt
gcov sample.c
gcovr -r . --html-details -o coverage_report_coverage_and_instrument.html

# Move all files in the current directory to the new subfolder, except for the excluded file
for file in $(ls); do
  if [[ ! -d "cover_and_instrument" ]]; then
    # Create the directory
    mkdir "cover_and_instrument"
  fi
  if [[ "$file" != "sample.c" ]] && [[ "$file" != "input3.txt" ]] && [[ "$file" != "not_cover_and_not_instrument" ]] && [[ "$file" != "cover_and_not_instrument" ]] && [[ "$file" != "cover_and_instrument" ]]; then
    mv "$file" "cover_and_instrument"
  fi
done

rm sample.c

# Keep the shell window open
read -p "Press Enter to continue..."