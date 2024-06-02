#!/bin/bash

unique_names=()
names_prg=()
lists="./lists"
count_file=0

if [ -d "$lists" ]; then
    cd "$lists"
    for file in *; do 
	if [ -f "$file" ]; then
		count_file=$((count_file+=1))
		if [ "$file" == "all.src" ]
    		then
    		    while IFS= read -r nameprg; do
    		    	names_prg+=($nameprg)
    		    done < "$file"
    		    continue
  		fi
		while IFS= read -r line; do
			if [[ ! " ${unique_name[@]} " =~ " $line " ]]; then
        			unique_name+=("$line")
        			
   			fi
   			in_file=$(find /home/user/MyProgramm/stagirovka/probation/el-1-last/deps -name "$line.*")
   			if [ -f "$in_file" ]; then
   				while IFS= read -r in_line;do
   					if [[ ! " ${unique_name[@]} " =~ " $in_line " ]]; then
        					unique_name+=("$in_line")
        			
   					fi
   				done < "$in_file"
  			fi
		done < "$file"
	fi
    done
       		
else
	echo "Директория не существует"
fi
echo "$count_file"
echo "${#unique_name[*]}"


