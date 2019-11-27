
#!/usr/local/bin/bash

#create variables hash
declare -A variables_data

#create themelist hash
declare -A theme_list_data

#Look for variables
while read line 
do
   IFS='='
   read -ra ADDR <<< "$line"
   KEY="${ADDR[0]}"
   VALUE="${ADDR[1]}"
   variables_data[$KEY]=$VALUE
   # echo $KEY
   # echo $VALUE
   # 	echo ${variables_data[$KEY]}
   # echo ${!variables_data[@]}
   	# echo ${variables_data[@]}
done < ./variables

echo ${!variables_data[@]}



#   echo ${variables_data[${RPO_SHOP}]}


# echo ${!variables_data[@]}

#open variables

#populate variables hash (ensure its set up correctly)

#use shop and password to theme list, save in variable (or file)

#loop thru each line
 	#ignore if DEVELOP, PROD, OR STAGING can't be found
 	#if one is found, partition string, put in themelist hash

#loop back thru variables
	#skip shop & password
	#replace develop, prod and staging codes with the ones from the hash

#save the file