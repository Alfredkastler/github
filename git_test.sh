#####git init:  "Cette commande est la première étape pour transformer ton dossier en dépôt Git."

#exp:git init crée simplement le dépôt localement sur ma machine

#github/
#│
#├── .git/          ← Git est maintenant installé ici
#├── projet1/
#├── script.sh
#└── README.md
#

####git status:afficher les les fichiers non suivis(UNtracked files)


####git add: suivre les modifications des fichiers 
 

####git diff: montrer exactement les changements appliqués sur les fichiers
 
####git commit -m "msg" : enregistre les modifications préparées avec git add dans l'historique Git. Le message permet d'indiquer ce que contient cette version.

####git log : historique des commits

####git reset --hard <IDcommit> : revenir à un commit précis
 
####git reflog: historique des mouvements de HEAD

####git remote add origin https://github.com/adem123/github.git :

#remote signifie dépôt distant.

#Tu as actuellement un dépôt Git local sur ton Ubuntu :

#~/devops/github/.git

#Mais Git ne sait pas encore où se trouve ton dépôt sur Internet.

#LOCAL                              DISTANT

#Ubuntu                             GitHub
#~/devops/github                    github.com/...
#     │                                  │
#     └── dépôt Git                     └── dépôt Git

#git remote permet donc de gérer les connexions avec des dépôts distants.


#git remote add :Ajoute une nouvelle connexion vers un dépôt distant

#Git enregistre donc cette association :

#origin
#   ↓
#https://github.com/adem123/github.git

#####git push -u origin master : Envoie ma branche locale master vers le dépôt distant origin (GitHub), et mémorise cette association.

x=a+b
y=a-b

