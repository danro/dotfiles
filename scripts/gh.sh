# Opens the github page for the current git repository in your browser
# git@github.com:jasonneylon/dotfiles.git
# https://github.com/jasonneylon/dotfiles/
giturl=$(git config --get remote.origin.url)
if [ "$giturl" == "" ]
	then
		echo "Not a git repository or no remote.origin.url set"
		exit 1;
fi

# check for codebase urls
# example: git@codebasehq.com:bkwld/broadcom/5gsite.git
IFS=':' read -ra githost <<< "$giturl"
githost=${githost[0]}
if [ $githost == "git@codebasehq.com" ]
	then
		giturl=${giturl/git\@codebasehq\.com\:/}
		giturl=${giturl/\.git/}
		IFS='/' read -ra urlparts <<< "$giturl"
		giturl="https://${urlparts[0]}.codebasehq.com/projects/${urlparts[1]}/repositories/${urlparts[2]}/tree/master"
		echo $giturl
		open $giturl
		exit 1;
fi

# otherwise default to github
giturl=${giturl/git\@github\.com\:/https://github.com/}
giturl=${giturl/\.git//}
echo $giturl
open $giturl