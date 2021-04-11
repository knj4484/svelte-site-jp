for f in `find ./content/tutorial | grep '.md$' | grep -v 'ja.md$'`; do
line_e=`wc -l $f | sed 's/ [^ ]*$//'`
dir=`dirname $f`
fj=$dir/text.ja.md
line_j=`wc -l $fj | sed 's/ [^ ]*$//'`
test "$line_j" != "$line_e" && echo $fj
done