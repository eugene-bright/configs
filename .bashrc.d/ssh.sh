export SSH_AUTH_SOCK=/run/user/$(id -ru)/gnupg/S.gpg-agent.ssh
echo UPDATESTARTUPTTY | gpg-connect-agent &> /dev/null
