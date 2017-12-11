#!/bin/bash

function migrate {
  local d="$1"
  if [ -d "$d" ]; then
    cd $d
    if [ -d ".git" ]; then
      REPOSITORY=`basename $(pwd)`
      echo -e "Repository found in $REPOSITORY"
      if [[ $(git remote -v | grep origin) = *bitbucket* ]]; then
        echo -e "$d still lives in Bitbucket world, let's migrate"

	echo -e "Renaming remote origin to bitbucket"
	git remote rename origin bitbucket
	echo -e "Add github repository as origin"
	git remote add origin git@github.com:ACSI-IT/$REPOSITORY.git
	echo -e "Remove bitbucket as remote"
	git remote rm bitbucket
	echo -e "Finished for repository $d"
      else
        echo -e "This repository has already been migrated to Github"
      fi
    fi
    
    scan *
    cd ..
  fi
}

function scan {
  for x in $*; do
    migrate "$x"
  done
}

if [ "$1" != "" ]; then cd $1 > /dev/null; fi
echo -e "Scanning ${PWD}"
scan *
