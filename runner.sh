# Change to the current directory
cd "$PWD"

# Remove the "result" folder if it exists
if [ -d "result" ]; then
    rm -rf "result"
fi

# Create a new "result" folder
mkdir "result"
cp sample.c "result"
cd "result"

# Build the code without coverage and instrumentation
gcc -o 1-build_nocoverage_and_noinstrument.exe sample.c
./1-build_nocoverage_and_noinstrument.exe 10 20 -3

# Move all files in the current directory to the new subfolder, except for the excluded file
for file in $(ls); do
  if [[ ! -d "1-build_nocoverage_and_noinstrument" ]]; then
    # Create the directory
    mkdir "1-build_nocoverage_and_noinstrument"
  fi
  if [[ "$file" != "sample.c" ]] && [[ "$file" != "1-build_nocoverage_and_noinstrument/" ]]; then
    mv "$file" "1-build_nocoverage_and_noinstrument"
  fi
done

# Build the code with coverage and without instrumentation
gcc -o 2-build_coverage_and_noinstrument.exe sample.c --coverage
./2-build_coverage_and_noinstrument.exe 10 20 -3
gcov sample.c
gcovr -r . --html-details -o coverage_report_coverage_and_noinstrument.html
gcovr --print-summary --object-directory . > coverage_report.txt

# Move all files in the current directory to the new subfolder, except for the excluded file
for file in $(ls); do
  if [[ ! -d "2-build_coverage_and_noinstrument" ]]; then
    # Create the directory
    mkdir "2-build_coverage_and_noinstrument"
  fi
  if [[ "$file" != "sample.c" ]] && [[ "$file" != "1-build_nocoverage_and_noinstrument/" ]] && [[ "$file" != "2-build_coverage_and_noinstrument/" ]]; then
    mv "$file" "2-build_coverage_and_noinstrument"
  fi
done

# Build the code with coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o 3-build_coverage_and_instrument.exe sample.c
./3-build_coverage_and_instrument.exe 10 20 -3
gcov sample.c
gcovr -r . --html-details -o coverage_report_coverage_and_instrument.html

# Move all files in the current directory to the new subfolder, except for the excluded file
for file in $(ls); do
  if [[ ! -d "3-build_coverage_and_instrument" ]]; then
    # Create the directory
    mkdir "3-build_coverage_and_instrument"
  fi
  if [[ "$file" != "sample.c" ]] && [[ "$file" != "1-build_nocoverage_and_noinstrument/" ]] && [[ "$file" != "2-build_coverage_and_noinstrument/" ]] && [[ "$file" != "3-build_coverage_and_instrument/" ]]; then
    mv "$file" "3-build_coverage_and_instrument"
  fi
done

rm sample.c

# Keep the shell window open
read -p "Press Enter to continue..."