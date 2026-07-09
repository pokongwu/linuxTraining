#!/bin/bash
# Script for using the search commmands: grep, sed, awk

output=$(git --version 2>&1)

if [[ "$output" == *"command not found"* ]]; then
    sudo yum install git -y
else
    echo "git is already on your system"
fi

git clone https://github.com/logpai/loghub.git
cd loghub/Linux
grep -icn "check pass" Linux_2k.log > samplelog_01.log
sed 's/combo/my-system/' Linux_2k.log > samplelog_02.log
awk '{ count[$6,$7]++ } END { for (level in count) print level, count[level] }' Linux_2k.log > samplelog_03.log
ls -l
