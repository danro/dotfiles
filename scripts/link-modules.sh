# cp -r $(npm root -g)/$1 ./
echo "Looking for npm global modules to copy..."

NPM_ROOT=$(npm root -g)
NODE_MODULES='./node_modules'

for x in "$@" 
do
  if [ -d "$NPM_ROOT/$x" ]
  then
      echo "Copying module [$x] into $NODE_MODULES"
      mkdir -p $NODE_MODULES 
      # cp -r $NPM_ROOT/$x $NODE_MODULES/$x
      ln -s $NPM_ROOT/$x $NODE_MODULES/$x
  fi
done
