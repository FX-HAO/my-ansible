#!/bin/sh

MYDATE=`date +%Y-%m-%d`
MYFILENAME="Aide-"$MYDATE.txt
/bin/echo "Aide check !! `date`" > /tmp/$MYFILENAME
/usr/bin/aide.wrapper --check > /tmp/myAide.txt
/bin/cat /tmp/myAide.txt|/bin/grep -v failed >> /tmp/$MYFILENAME
/bin/echo "**************************************" >> /tmp/$MYFILENAME
/usr/bin/tail -20 /tmp/myAide.txt >> /tmp/$MYFILENAME
/bin/echo "****************DONE******************" >> /tmp/$MYFILENAME
/usr/bin/mail -s"$MYFILENAME `date`" haofxpro@gmail.com < /tmp/$MYFILENAME
