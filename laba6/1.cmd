:: task1
laver > ver.txt
C:
md C:\LAB6
cd C:\LAB6
mem > mem.txt
diskpart /s script.txt > diskpart.txt
ver > ver.txt

:: task2
md TEST
xcopy C:\LAB6 TEST

:: task3
type C:\LAB6\* > copy.txt

:: task4
rm mem.txt diskpart.txt ver.txt