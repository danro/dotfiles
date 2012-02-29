# Opens the github page for the current git repository in your browser
# git@github.com:jasonneylon/dotfiles.git
# https://github.com/jasonneylon/dotfiles/
giturl=$(git config --get remote.origin.url)
if [ "$giturl" == "" ]
  then
   echo "Not a git repository or no remote.origin.url set"
   exit 1;
fi

giturl=${giturl/git\@github\.com\:/https://github.com/}
giturl=${giturl/\.git//}
echo $giturl
open $giturl