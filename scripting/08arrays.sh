#!/bin/bash


xarr=(roshdi 1 hamdy 2 roshdy 3 elsayed 4 farag 5);

# xarr=(roshdi hamdy roshdy elsayed farag);

# echo ${#xarr[@]}
# echo ${xarr[0]}
# echo ${xarr[1]}
# echo ${xarr[2]}
# echo ${xarr[3]}
# echo ${xarr[4]}
# echo ${xarr[5]}
# echo ${xarr[6]}
# echo ${xarr[7]}
# echo ${xarr[8]}
# echo ${xarr[9]}


# echo ${xarr[@]}
# echo ${xarr[@]}


# for((i=0; i<${#xarr[@]}; i++)){
#     echo ${xarr[$i]}

# }




# for ((i=0; i<${#xarr[@]}; i++))
# do
#     if [ ${xarr[$i]} = "roshdy" ]
#     then
#         read -p "found u: " d
#         echo $d
#         break
#     fi

#     echo ${xarr[$i]}

# done 


# i=0

# while [ $i -lt ${#xarr[@]} ]
# do

#     echo "hi! " ${xarr[$i]}
#     ((i++))
# done

# i=0

# until [ $i -ge ${#xarr[@]} ]
# do

#     echo "hi! " ${xarr[$i]}
#     ((i++))
# done





for((i=0; i<=10; i++)){
    if [ $i -eq 7 ]
    then 
        continue
    elif [ $i -eq 9 ]
    then
        break
    fi
    echo $i

}