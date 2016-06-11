which brew > /dev/null
if [[ $? != 0 ]] ; then
  echo "Error: Homebrew not installed. Please Homebrew from http://brew.sh first." 1>&2
  exit 1
fi

for SCRIPT in `dirname $0`/brew/*.sh
do
  if [ -f $SCRIPT -a -x $SCRIPT ]
  then
    echo $SCRIPT
    $SCRIPT
  fi
done
