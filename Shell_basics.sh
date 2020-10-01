## Shell basics commands

#MANUAL
$man ls :to learn about ls, go to a page with info about ls.

#ABC
$mkdir #to make a directory

$mkdir data
$mkdir data/seqs scripts analysis #to make multiple directories in one command

$touch readme.md data/readme #it creates new files if does not exist, or update if already exist
$mkdir -p #to crate the whole path

$mkdir -p zmays-snps/{data/seqs,scripts,analysis}

$bash: #to run from shell 

$pwd: #Where I am

$ls: print the names of files and directory in the current directory.

$ls -F: #classify the elements in the current directory.
$ls -l: # show file or directory, size, modified data and time, file or folder name
$ls -lH: # show file or directory, size, modified data and time, file or folder name in a HUMAN READABLE FORMAT

$ls -lR #to show all order, and going inside of the directories 
$ls -s: #display the size of the files and directories

$clear

$cd:  to change location
$cd .. to go back

Shortcut
$~ : The start of a path

$cd – brings you back

$ mkdir: make directory

.. refers to the parent directory (one above the current directory) 
. refers to the current directory

$rm remove 
MOVING FILES AND DIRECTORIES

$mv:  $ mv thesis/draft.txt thesis/quotes.txt.  #first argument is what we are moving and the second is where it is to go. Here, we are changing names.
 
COPYING

$cp  copie

WILDCARDS

* to matches zero or more characters
? matches exactly one character, ?? two, ??three.

PIPES AND FILTERS

$wc word count, count lines, word and characters in files
$wc -l count only the numbers

$wc -l *.pdb > lengths.txt, > redirect the output to a file instead of printed it to the screen.

$cat lengths.txt to show what it contains

$cut -d,-f 2 animals.txt. show the second column which separated (divided d) by coma.

$less lengths.txt, allows you to go forward one screenful by pressing the spacebar, or back one pressing b. press q to quit.

#sort command is used to sort a file, arranging the records in a particular order.
$sort lengths.txt order in alphanumeric and show you content
$sort -n lengths.txt #order numeric and show
$sort -r #reverse order
$sort -k #to sort by specific columns (keys):-k1,1 to sort by keys in columns 1 to 1
$sort -c #to check if the file is sorted already (fast)
$sort -t, or -t "," to change the separator to a comma instead of tab (default)


$echo  the echo command prints text

$head Show the first 10 lines, $head 3 show the first three lines
$tail show the last 10 line

$sort -n lengths.txt | head-n 1. | is a pipe command and is used between two commands, 
use the output of the command on the left as the input to the command on the right.

To run process and do something else, run the command and add &


 . on its own means the current working directory

 $(command) inserts a command’s output in place


$touch #updates the modification time of a file or creates a file if it doesn’t already exist.

ls *.txt       # shows haiku.txt
ls *.txt | cat # shows haiku.txt instead of showing the content of haiku.txt
ls *.txt | xargs cat # show the content of the file instead of the filename
find . -name '*.txt' | wc -l # does not work: indicates 4 lines
find . -name '*.txt' | xargs wc -l # xargs runs "wc -l xxx" where xxx = input (from find) as arguments to wc
find . -name '*.txt' | xargs -n 1 wc -l # to analyze each file with wc one at a time, parallelized

#We can also create new files: pdf, html, etc.
pandoc -o notebook.html notebook.md
pandoc -o notebook.pdf notebook.md
pandoc -o notebook.html notebook.md
pandoc -o notebook.tex notebook.md

% echo dog-{gone, bowl,bark} 
% mkdir -p zmays-snps/{data/seqs,scripts,analysis}
-p # is for path
{} # to create multiple extentions


### cut command
#for cutting out the sections from each line of files and writing the result to standard output
$cut OPTION... [FILE]...

$cut -b(byte) #To extract the specific bytes
$cut -c (column) #
$cut -c [(k)-(n)/(k),(n)/(n)] filename
k #denotes the starting position of the character and 
n #denotes the ending position of the character in each line, if k and n are separated by “-”,
# otherwise they are only the position of character in each line from the file taken as an input.

$cut –complement: #As the name suggests it complement the output. 
#This option can be used in the combination with other options either with -f or with -c.
$cut -f (field) # to cut by fields rather than columns. 

#more options
-f2, -f 1,3, -f1-3
-c2 #to cut (extract) the second character, not the second field (column)
-d #to change the delimiter between columns fields instead of tab:
# -d ' ' for a space, -d, -d , or -d ',' for a comma (csv files).

#
$basename and $dirname #extract the file/folder name and its path from a string (the file/folder need not exist).
$basename -s suffix: # to removed known suffix (like an extension)

## $sed command
#It is stands for stream editor and it can perform lot’s of function on file like, 
#searching, find and replace, insertion or deletion. 
#can edit files even without opening it, which is much quicker way to find and replace something in file,
#than first opening that file in VI Editor and then changing it.

$sed OPTIONS... [SCRIPT] [INPUTFILE...] 