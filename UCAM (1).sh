#!/bin/bash
# echo "hello world"


if [ $1 = "dept_new" ] ; then
   touch "$2.txt"
   echo "$2 Department created"
elif [ $1 = "dept_del" ] ; then
   rm "$2.txt"
   echo "$2 Department removed"
elif [ $1 = "student_new" ] ; then
    dept_name=$4.txt
    student_id=$3.txt
    student_data=" $2 $3 $4"
    # echo $2 $3 $4
    if [ -f "$dept_name" ] ; then
       if grep -qF "$student_data" "$dept_name" ; then  #The grep -qF command searches for the exact string (-F for fixed strings) without printing any output (-q for quiet mode).
           echo "Student data found in $dept_name."
       else
          echo "$student_data" >> $4.txt
       fi
     
    else
      echo "$4 File not found "
     fi
elif [ $1 = student_del ] ; then
   data=$2
   echo "$data"
   for files in *.txt; do
    sed -i "/$2/d" "$files"  #Sed used for text processing and manipulation,reads input line by line, applies specified commands to each line,and produces the output.here i means the changes will be made directly to the file. d is for delete.
   done
   echo "Information of $data deleted"

else 
   echo "check again"
fi


