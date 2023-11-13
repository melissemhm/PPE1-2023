# Journal de bord du projet encadré :

# Séance 1 :
 
Je vais commencer par l'Install Party, qui ne s'est pas bien passé pour moi car mon ordi a rencontré des problèmes à chaque étape du processus. Heureusement, les enseignants étaient là pour nous aider, en particulier Monsieur Pierre, qui m'a soutenu du début à la fin. Mais, vers la fin de la journée, j'ai été confronté à un bug majeur, et étant donné l'heure avancée, j'ai été conseillé de reporter sa résolution à plus tard. Finalement, j'ai dû abandonner et acheter un nouvel ordinateur. J'ai dû tout réinstaller par moi-même, j’ai installé ubuntu mais je l’ai fait en dual boot j'espère que je vais pas le regretter.

En ce qui concerne la première séance, je dois avouer que c'était un peu confus pour moi. Cependant, c'est une habitude que j'ai, car je dois généralement revoir le cours par moi-même pour mieux comprendre et assimiler ce que les enseignants ont expliqué. Pour ce qui est du projet, je n'ai pas encore une compréhension claire de ce que nous devons accomplir, mais j'espère que cela deviendra plus clair lors de la prochaine séance.

En ce qui concerne GitHub, je n'avais jamais eu de compte personnel, mais nous l'avons déjà utilisé avec Monsieur Loic Grobol.

Concernant l'exercice à réaliser :

J'ai bien saisi les instructions à suivre et je pense avoir respecté les consignes. Cependant, dans mon script, il n'y a pas de représentation visuelle de l’arborescence en question. Je me demande donc si cette représentation est abstraite, ce qui signifierait que si nous schématisons nos commandes sur du papier, cela serait suffisant pour la visualiser, ou si elle doit réellement apparaître de manière visuelle dans le terminal.

# Séance 2 :
 
J'ai cloné le dépôt Git sur ma machine avec succès ! J'ai suivi les instructions des exercices sans problème, et j'ai accompli le travail prévu. La fiche TD était très claire, ce qui a facilité les choses.

En ce qui concerne les questions, j'ai répondu aux deux points suivants :

1.Pour vérifier si nous sommes en retard par rapport à la version en ligne, j'ai utilisé la commande "git status", ce qui a bien fonctionné.

2.Pour mettre à jour notre copie locale avec les modifications du dépôt en ligne, j'ai exécuté la commande "git pull".

Cependant, j'ai omis de noter la commande que vous avez mentionnée pour créer une arborescence de fichiers (celle de tree). Pourriez-vous me rappeler quelle commande il s'agit, s'il vous plaît ?

De plus, lorsque j'ai essayé d'utiliser la commande "git log" et que j'ai ensuite appuyé sur 'q' pour quitter, cela n'a pas fonctionné comme prévu. Je vais revoir cette partie et essayer de résoudre ce problème.

Lorsque j'ai exécuté la commande "git status", j'ai remarqué qu'il y avait des modifications apportées au fichier "journal.md" qui n'avaient pas encore été enregistrées dans Git. La sortie de la commande m'a indiqué que pour mettre à jour le fichier avec ces modifications, je devais utiliser la commande "git commit -a"

# Séance 3 :

Dans la séance n°3, on a vu les commandes pour corriger les erreurs sur Git,  c'était clair!

L'exercice 1 était plutôt simple. J'avais un problème lorsque j'ai utilisé la commande "git reset", c'est pourquoi j'ai opté pour la commande "git revert".

l'exercice 2 commence par la création d'un nouveau fichier "oups.md" pour cela, j'ai utilisé la commande "touch".

j'ai commencé l'écriture sur mon nouveau fichier, J'ai déjà exécuté les commandes "git add" et "git commit" pour ajouter mes premières modifications, et je prévois de répéter ces étapes une fois de plus. 

J'ai réussi à copier les modifications réalisées sur "oups.md" vers le fichier "journal.md". Cependant, je dois avouer que j'étais un peu perdu lorsque j'ai essayé de supprimer le fichier "oups.md". À chaque fois, j'ai rencontré un nouveau problème. Initialement, j'ai utilisé la commande "git rm oups.md", mais cela n'a pas fonctionné. Ensuite, j'ai essayé "git reset oups.md", ce qui a eu pour conséquence que Git ne reconnaissait plus la présence de ce fichier. Finalement, j'ai opté pour la méthode "rm oups.md", qui a fonctionné. 
A la fin, j'ai utilisé les commandes "git add" et "git commit" pour enregistrer les modifications apportées au fichier "journal.md".

# Séance 4 :

La quatrième séance s'est révélée un peu complexe pour moi, et j'ai trouvé que le rythme était rapide. J'ai eu des difficultés à suivre toutes les commandes fournies par les enseignants, et même pendant les exercices en classe, je n'arrivais pas à faire les commandes de manière autonome.

Lors de ma révision, j'ai passé en revue toute la notion de redirection, ce qui m'a permis de mieux la comprendre. En ce qui concerne les exercices impliquant des scripts, je les ai trouvés un peu difficiles, surtout le premier exercice et je ne comprends pas vraiment ce qui est vraiment demandé.C'est pourquoi j'ai été contraint de les aborder selon ma propre interprétation.

Pour la première question du premier exercice, j'ai conçu un script qui exécute la commande suivante : `cat ./$annee// | grep -c "$entite." Pour réaliser cela, j'ai employé deux arguments, à savoir "annee" et "entite." Cependant, je ne suis pas sûr s'il est nécessaire de prendre les deux arguments comme je l'ai fait, ou si il était demandé de faire seulement l'argument de "entite".

En ce qui concerne la deuxième question, j'ai pris trois années comme arguments (annee1, annee2, annee3) et un argument pour "entite," et j'ai exécuté le script exo1.sh avec ces valeurs pour chaque année en utilisant le même "entite."

Pour l'exercice 02, j'ai créé un script pour établir un classement des lieux les plus mentionnés dans les fichiers. Je n'ai pas précisé l'année ni le mois, ce qui semble être la réponse à la dernière question de l'exercice. Autrement dit, si la question concernait les années ou les mois, je pourrais utiliser des variables en tant qu'arguments pour les spécifier, ce qui répondrait à la deuxième question.

La commande que j'ai utilisée était la suivante : cat ./*/*/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -20. J'ai spécifié que je voulais les 20 villes les plus fréquemment citées.

Pour répondre à la deuxième question, où il était nécessaire de considérer l'année, le mois et le nombre de lieux à afficher, j'ai pris en compte quatre arguments distincts :

    annee="$1"
    mois="$2"
    nombre_de_lieux="$3"
    fichiers="./$annee/$mois/*"

Par la suite, j'ai exécuté la commande suivante afin de créer un classement des lieux les plus fréquemment cités dans les fichiers spécifiques à l'année et au mois indiqués :
cat $fichiers | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -$nombre_de_lieux

Je vais finaliser les modifications sur mon journal de bord, puis je prévois de le téléverser sur mon dépôt GitHub en utilisant les commandes "git add" et "git commit", comme on a eu l'habitude de le faire. De plus, je vais créer un répertoire dédié pour y placer les scripts de mes exercices. Enfin, je vais établir un tag et le pousser vers le dépôt.

# Séance 5 :

La séance 5 a été claire pour moi, et j'ai bien compris la notion des instructions conditionnelles. Cela peut sembler contradictoire avec ce que vous avez dit, à savoir que ceux qui n'ont jamais fait de programmation trouveraient cette séance plus claire, mais en réalité, le fait que j'aie déjà compris cette notion en Python m'a aidé à mieux la saisir ici, même si la syntaxe est différente dans le contexte du terminal.

En ce qui concerne les exercices, j'ai suivi les instructions en vérifiant les arguments. Cependant, j'ai rencontré un petit problème de compréhension lié à la séance 4, où je n'avais pas bien compris les scripts.
Je ne suis pas certaine si vous avez précisé qu'il fallait un seul script pour chaque exercice ou bien c’est vraiment comme j’ai fait; un script pour chaque question. C’est pourquoi j'ai réalisé les exercices de cette semaine en utilisant les mêmes scripts que la semaine précédente.
De plus, je trouve que la correction des exercices n'était pas très explicite, surtout dans la dernière question de l'exercice 2, où il fallait mettre l'étoile entre guillemets, c'est pourquoi je ne l'avais pas fait.

En ce qui concerne la manipulation du dépôt Git local, je constate une nette amélioration de ma part. Je parviens à le manipuler de manière plus aisée, et je ne rencontre plus les mêmes messages d'erreur qu'au début, où j'ai dû supprimer mon dépôt et le cloner à nouveau.
Cependant, j'ai été inquiété par ce que M. Pierre a mentionné. Il a parlé du fait que nous devrions avoir des commentaires sur notre GitHub ou dans notre journal, mais pour ma part, je n'en ai jamais reçu. J'espère que c'est simplement dû au fait qu'il n'y a pas eu de commentaires pour l’instant et non parce que mes travaux ne sont pas visibles.

En ce qui concerne le projet, j'ai trouvé un groupe, bien que notre composition ne corresponde pas exactement à ce que vous attendez de nous, puisque deux d'entre nous sont de Nanterre et le troisième est de P3.

La manipulation du terminal pour ouvrir les URL était claire pour moi, mais je n'ai pas totalement compris les consignes du projet.

Je sais que nous devons chercher un mot et choisir trois langues, puis rechercher 50 URL ou corpus où ce mot apparaît. Cependant, je ne suis pas sûre si le mot doit être choisi au hasard ou s'il doit suivre certains critères.

Comme nous n'avons pas de directives précises concernant les critères à suivre, nous avons proposé quelques mots tels que "diversité," "sucre," "univers," "écureuil," "cyanure," "sanglier," ...

# Séance 6 :

La séance 6 consistait à réaliser un mini projet en tant qu'entraînement pour le projet final. Le premier exercice était relativement simple, portant sur la vérification des arguments pour la première question et l'affichage de nombre de ligne avec des tabulation pour la deuxuème question. cependant, au début, j'avais initialisé les tabulations comme une chaîne de caractères, ce qui n'était pas la meilleure approche, comme l'a souligné M. Yoann.

Le deuxième exercice s'est avéré un peu plus complexe. J'ai dû revoir le contenu du cours de la séance 5 plusieurs fois pour pouvoir progresser. Jusqu'à présent, je n'ai pas obtenu le résultat souhaité et demandé. Pour la première question, qui consistait à récupérer le code HTTP, c'était simple. Cependant, la correction des erreurs s'est avérée particulièrement difficile. Pour les codes 404 et 502, il est impossible d'intervenir à mon avis, car ces erreurs proviennent du serveur, mais pour le code de redirection, il est possible de le corriger. Pour ce faire, au début, j'ai créé un autre fichier et, lors de la lecture de chaque ligne d'URL, je la redirigeais vers ce nouveau fichier. Cependant, à force d'essayer d'exécuter et de corriger mes erreurs à chaque fois, cela a commencé à m'afficher des boucles infinies. J'ai dû interrompre cette approche et recommencer en modofiant le même fichier comme demandé, et mon approche m'affiche correctement la nouvelle URL mais le problème réside dans l'affichage du code HTTP.

Normalement, cette ligne : "echo -e "${lineN}\t${nouvelle_url}\t${code}" devrait m'afficher le numéro de ligne, l'URL et le code HTTP. Cependant, elle n'affiche que le numéro de ligne et la nouvelle URL. Pourtant, quand j'essaie de récupérer le code HTTP de la nouvelle URL directement dans le terminal, cela fonctionne. J'ai essayé de nombreuses approches, mais je n'ai pas encore réussi à trouver la faille.

En ce qui concerne la question de l'encodage, j'ai cherché dans le cours de la semaine 5 pour voir si j'avais manqué la commande permettant de trouver l'encodage, mais je ne l'ai pas trouvé, je ne sais pas si c'est juste moi qui l'ai loupé. Je l'ai fait alors avec la commande "file" que j'ai vue dans le cours de GIM, et cela m'affiche le résultat. Cependant, cela pose toujours problème sur la troisième ligne, celle de la redirection, et je ne sais pas comment résoudre ce problème.

Pour le projet, nous nous sommes mis d'accord sur le mot "orgueil" et avons choisi le français, l'espagnol et le turc comme langues sur lesquelles nous allons travailler.

# Séance 7 :
Au cours de la séance 7, nous avons débuté par la correction du mini-projet, ce qui m'a permis de comprendre mes erreurs et d'appréhender la façon correcte de faire un script fonctionnel pour traiter n'importe quel fichier contenant des URLs. On a poursuivi le cours qui a porté sur HTML, pour pouvoir présenter les résultats de notre script sous forme d'un tableau. C'était assez compliqué, pour ma part, de pouvoir le faire, mais après plusieurs modifications, j'ai pu le faire.

En parallèle, les exercices demandés, portaient sur la manipulation de fichiers texte à l'aide de commandes telles que grep, sort, uniq, paste, et tr. Il y avait des commandes que j'ai déjà manipulées telles que grep, sort, uniq, mais grâce à ces exercices, j'ai appris la commande tr qui effectue des transformations dans un texte et la commande paste pour fusionner les bigrammes mais qui est aussi utilisée pour fusionner les lignes..






