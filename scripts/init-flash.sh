#!/bin/bash
echo "Creating Flash directory structure..."

if [ -d "./src/fla" ]
then
	echo "Woops, already has src/fla. Bye."
	exit 1
fi

#copy tmproj template
DIR_NAME=${PWD##*/}
# cp ~/scripts/tmproj/template.tmproj ./\ $DIR_NAME.tmproj

#create dirs and pull git repos
WORKING_PATH=`pwd`

mkdir -p deploy/scripts
cp -a ~/Sites/GitHub/flash/swfobject/swfobject.js deploy/scripts/
cd deploy/scripts
. ~/scripts/git-recursive-pull.sh
cd $WORKING_PATH

mkdir -p src/fla/assets
mkdir -p src/as3/projectname
mkdir -p src/as3/lib
cp -a ~/Sites/GitHub/flash/as3-core/* src/as3/lib/
cd src/as3/lib
. ~/scripts/git-recursive-pull.sh
cd $WORKING_PATH

echo "Done creating Flash directories. Keep it tricky!"
echo