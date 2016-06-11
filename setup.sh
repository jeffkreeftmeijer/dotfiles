for SCRIPT in `dirname $0`/setup/*.sh
do
  if [ -f $SCRIPT -a -x $SCRIPT ]
  then
    echo $SCRIPT
    $SCRIPT
  fi
done
