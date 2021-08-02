#!/bin/bash
#gg
directory_processor(){
cd $dict
if [ $string == "ana" ];
 then
  for file in ./*;do
    echo "$file :"
    grep -o $third $file | wc -l
done
fi
if [ $string == "del" ]
 then
  for file in ./*;do
    find $file -size +$third -delete
  done
fi
if [ $string == "arr" ];
 then
  mv *.$third ~/Documents
fi
}

echo "Please Enter the directory:"
read  dict
echo "Please Enter: ana  or  del  or arr"
read string
echo "Please Enter: a-regex-to find  or  threshold-size  or  the-new-directory-path"
read third

directory_processor dict string third

