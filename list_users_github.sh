#!/bin/bash

#identité: lue dans les variables d'environnement
 
#USAGE: ./list_users_script.sh REPO_OWNER REPO_NAME
function helper {
    if [[ $# -ne 2 ]]; then
        echo "Erreur : il faut 2 arguments."
        echo "Usage : ./list-users.sh <owner> <repo>"
        exit 1
    fi
}

helper "$@"

USERNAME=$username
TOKEN=$token

#Argument du script

REPO_OWNER=$1
REPO_NAME=$2

function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
    collaborators="$(curl -s -u "${USERNAME}:${TOKEN}" "https://api.github.com/$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

    if [[ -z "$collaborators" ]]; then
        echo "Aucun utilisateur avec accès en lecture sur ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Utilisateurs avec accès en lecture à ${REPO_OWNER}/${REPO_NAME} :"
        echo "$collaborators"
    fi
}

# Programme principal
list_users_with_read_access
