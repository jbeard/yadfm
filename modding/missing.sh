#!/bin/bash

OLDLIST=`cat $1`
NEWLIST=`cat $2`

for NEWFILE in ${NEWLIST} ; do
        MATCH=false
        for OLDFILE in ${OLDLIST} ; do
                if [ ${OLDFILE} == ${NEWFILE} ] ; then
                        MATCH=true
                        break
                fi
        done
        if ! ${MATCH} ; then
                echo "${NEWFILE}"
        fi
done
