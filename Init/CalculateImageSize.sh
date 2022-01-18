#===================== TEST 1 ====================
echo "====== TEST 1 "
echo "Param"
echo "Image size : 1024 X 1024"
#Init data
outputEXE=$(./exo1.out "1024" "1024")
Correct_Output_Array=("1024.00" "3.00")

Output_Array=($outputEXE)

#for i in ${Output_Array[*]}; do
#  echo $i
#done

# Test Length output
if [ ${#Correct_Output_Array[@]} -ne ${#Output_Array[@]} ]; then
       echo "Expected ${#Correct_Output_Array[@]} output lines but got ${#Output_Array[@]} lines"
       echo "Test 1 failed."
       exit 1
fi

# Test Array output
for (( i="0"; i<${#Correct_Output_Array[@]}; i++ ))
do
       if [ ${Correct_Output_Array[${i}]} != ${Output_Array[${i}]} ]; then
              echo "Expected '${Correct_Output_Array[${i}]}' but got : '${Output_Array[${i}]}'"
              echo "Test 1 failed."
              exit 1
       fi
done
echo "Test 1 passed."
#===================== TEST 2 ====================
echo "====== TEST 2 "
echo "Image size : 1024 X 1000"
#Init data
outputEXE=$(./exo1.out "1024" "1000")
Correct_Output_Array=("1000.00" "2.92")

Output_Array=($outputEXE)

#for i in ${Output_Array[*]}; do
#  echo $i
#done

# Test Length output
if [ ${#Correct_Output_Array[@]} -ne ${#Output_Array[@]} ]; then
       echo "Expected ${#Correct_Output_Array[@]} output lines but got ${#Output_Array[@]} lines"
       echo "Test 2 failed."
       exit 1
fi

# Test Array output
for (( i="0"; i<${#Correct_Output_Array[@]}; i++ ))
do
       if [ ${Correct_Output_Array[${i}]} != ${Output_Array[${i}]} ]; then
              echo "Expected '${Correct_Output_Array[${i}]}' but got : '${Output_Array[${i}]}'"
              echo "Test 2 failed."
              exit 1
       fi
done
echo "Test 2 passed."
exit 0
