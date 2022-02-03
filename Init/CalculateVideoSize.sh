#===================== TEST 1 ====================
echo "====== Dataset 1 "
echo "Params"
echo "Image gray : 2048 ko"
echo "Video length : 20 s"
echo "FPS : 30"
echo "==================="
outputEXE=$(./exo2.out "2048" "20" "30")
Correct_Output_Array=("2.34")

Output_Array=($outputEXE)

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
 echo " "
#===================== TEST 2 ====================
echo "====== Dataset 2 "
echo "Params"
echo "Image gray : 1000 ko"
echo "Video length : 30 s"
echo "FPS : 30"
echo "==================="
outputEXE=$(./exo2.out "1000" "30" "30")
Correct_Output_Array=("1.71")

Output_Array=($outputEXE)

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
