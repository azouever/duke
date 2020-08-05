#!/bin/bash
#IFS=,
#numbers="01,02,03,04,05";
numbers=(01 02 03 04 05);
dir='/Users/xukaixuan/git/Lua-Quick-Start-Guide/';

for ((i=0;i<${#numbers[*]};i++))
do
  path="Chapter${numbers[i]}";
  curPath=$dir${path};
  echo "current path: $curPath";
  find $curPath -name "*.lua" -print0 | while IFS= read -r -d '' file; do 
        sed -i '1i #!/usr/local/bin/lua'  $file
        chmod u+x $file        
    done
done


