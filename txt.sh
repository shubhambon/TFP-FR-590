question 1)print EmployeeName and Total payy who has been pay greater than 10000.

91968@Swaps MINGW64 ~/Desktop/linux-content (master)
$ cat data.csv  | awk '$4 > 10000' |  awk '{print $2 " " $4}';
EmployeeName BasePay
NATHANIEL 167411
GARY 155966
ALBERT 212739
CHRISTOPHER 77916
PATRICK 134401
DAVID 118602
ALSON 92492
DAVID 256576
JOANNE 285262
PATRICIA 99722
EDWARD 294580

Q 2) what is the aggregate total pay of employees whose title is 'CAPTAIN'.

91968@Swaps MINGW64 ~/Desktop/linux-content (master)
$ cat data.csv  | grep CAPTAIN | awk '{sum+=$8}END{print sum}'
1171796
  
Q 3)Print Job Title and Overtimepay , between 7k & 10k

91968@Swaps MINGW64 ~/Desktop/linux-content (master)
$ cat data.csv | awk '$5>=7000 && $5<=10000' | awk '{print $3 " " $5}';
DEPUTYCHIEF 9737
ASSTDEPUTY 8601

Q 4)Print Average Basepay

91968@Swaps MINGW64 ~/Desktop/linux-content (master)
$ cat data.csv | awk '{sum+=$4}END{print sum/NR}'
157972

Q 5) Move files from one folder to respective Folders.

91968@Swaps MINGW64 ~/Desktop/linux assing (master)
$ touch abc.txt def.txt ghi.txt jkl.txt

91968@Swaps MINGW64 ~/Desktop/linux assing (master)
$ nano copyfiles.sh

91968@Swaps MINGW64 ~/Desktop/linux assing (master)
$ ./copyfiles.sh
Copied abc.txt to abc/
Copied def.txt to def/
Copied ghi.txt to ghi/
Copied jkl.txt to jkl/
