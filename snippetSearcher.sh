lang=$1
if [ "$lang" != "" ]
then
dir=/root/snippets/
if [ -d $dir$lang ]
then
snip=$(ls $dir$lang/ | rofi -dmenu)
if [ -f $dir$lang/$snip ]
then
cat $dir$lang/$snip
fi
fi
fi
