(*
Speed up Mail.app by vacuuming the Envelope Index
Code from: http://www.hawkwings.net/2007/03/03/scripts-to-automate-the-mailapp-envelope-speed-trick/
Originally by "pmbuko" with modifications by Romulo
Updated by Brett Terpstra 2012 <http://brettterpstra.com>
*)
 
tell application "Mail" to quit
set sizeBefore to do shell script "ls -lah ~/Library/Mail/V2/MailData | grep -E 'Envelope Index$' | awk {'print $5'}"
do shell script "/usr/bin/sqlite3 ~/Library/Mail/V2/MailData/Envelope\\ Index vacuum"
set sizeAfter to do shell script "ls -lah ~/Library/Mail/V2/MailData | grep -E 'Envelope Index$' | awk {'print $5'}"
log "Mail index before: " & sizeBefore
log "Mail index after: " & sizeAfter
log "Enjoy the new speed!"
tell application "Mail" to activate
