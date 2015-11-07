#!/bin/sh

TASKS=$(xml sel -t -v "/project/task[@status='Active'][@tags='@work']/title" ~/.local/share/gtg/gtg_tasks.xml | grep ^\( | sort)
ACTIVE=$(xml sel -t -v "/project/task[@status='Active'][@tags='@work']/title" ~/.local/share/gtg/gtg_tasks.xml | grep ^\( | wc -l)
COUNT=$(xml sel -t -v "count(/project/task[@tags='@work'])" ~/.local/share/gtg/gtg_tasks.xml)

old_IFS=$IFS      # save the field separator           
IFS=$'\n'
for TASK in ${TASKS}; do
	echo -n ${TASK} | sed s:\(A\)\ :\${color\ white}: | sed s:\(B\)\ :\${color\ LightGrey}: | sed s:\([C-Z]\)\ :\${color\ DarkGrey}:
	echo \${color}
done
IFS=$IFS
echo "--"
echo "TODO: ${ACTIVE} of ${COUNT} tasks shown"

