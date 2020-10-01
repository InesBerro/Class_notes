

#  New option 1_ adding info to run the code directly

cd log
for file in timetest?_snaq.log
do 
	 mv "$file" "${file/timetest/timetest0}"
done
cd ..
cd out
for file in timetest?_snaq.out
do
	 mv "$file" "${file/timetest/timetest0}"
done
cd ..

# New Option 2_ a simple one. One loop for both folders
#
for i in {1..9}
do
  mv log/timetest${i}_snaq.log log/timetest0${i}_snaq.log
  mv out/timetest${i}_snaq.out log/timetest0${i}_snaq.out
done
