* 
sed 's/one/One' <old-file >newfile

* Using & as the matched string
% echo "123 abc" | sed 's/[0-9]*/& &/'
123 123 abc

* Extended Regular Expressions: +
% echo "123 abc" | sed -r 's/[0-9]+/& &/'
123 123 abc

* Using \1 to keep part of the pattern
keep the first word of a line, and delete the rest of the line:
sed 's/\([a-z]*\).*/\1/'

switch two words around:
sed 's/\([a-z]*\) \([a-z]*\)/\2 \1/'

extended regular expression:('\(' not needed)
sed -r 's/([a-z]+) ([a-z]+)/\2 \1/' # Using GNU sed

to eliminate duplicated words:
sed 's/\([a-z]*\) \1/\1/'

detect duplicated words:
sed -n '/\([a-z][a-z]*\) \1/p'
(-n for silent mode, p for print)

reverse the first three characters on a line:
sed 's/^\(.\)\(.\)\(.\)/\3\2\1/'

* /1, /2, etc. Specifying which occurrence
leave first match alone, change 2,3,4... occurences:
sed 's/[a-zA-Z]* /DELETED /2g' <old >new

* /I - Ignore case
sed -n '/abc/I p' <old >new

* two processes
sed 's/BEGIN/begin/' <old | sed 's/END/end/' >new

* Multiple commands with -e command
sed -e 's/a/A/' -e 's/b/B/' <old >new
(-e for --expression='')

* Filenames on the command line
count the number of lines in three files that don't begin with a "#:"
sed 's/^#.*//'  f1 f2 f3 | grep -v '^$' | wc -l


