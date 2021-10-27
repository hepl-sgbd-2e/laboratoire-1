# Exercices sur les concepts de base

## Le dictionnaire des données

Exécuter le script `CreationBaseInfosoft.sql`, en utilisant l’utilisateur `INFOSOFT`. Il vous faudra donc le créer à
l’aide du script de création d’utilisateurs `create_user.sql`.

### Dictionnaire 1

Consulter la vue `USER_USERS` et afficher :
* Votre nom d'utilisateur en lettres minuscules, sauf la première lettre en majuscule;
* La date et l'heure de création de l'utilisateur;
* Le nom du tablespace par défaut;
* La date d'expiration de l'utilisateur, si cette date n'est pas spécifiée, ajoutez 2 ans à la date de création.

```sql

```

Exécuter la commande `DESCRIBE USER_USERS` pour afficher les noms et les types des colonnes de la vue `USER_USERS`

```sql

```

### Dictionnaire 2

Rechercher par ordre alphabétique toutes les vues accessibles. Ne sélectionnez que les vues dont le nom commence
par `USER_`  et n’affichez que le nom des cinq premières vues `ALL_OBJECTS`
Remarque : l’évaluation de la commande `SELECT` se fait dans l’ordre `FROM, WHERE, SELECT, ORDER BY`. Dans cet exercice
il faut d’abord trier avant de sélectionner 5 lignes.

> Attention au caractère  `_`, il a une signification.

```sql

```

OU

```sql

```

### Dictionnaire 3

Afficher le nom de tous les index que vous avez créés.  (`USER_INDEXES`). Spécifier le nom de la table sur lequel
l’index a été créé et spécifier `OUI` si les valeurs de l’index sont uniques ou `NON` si les valeurs de l’index ne sont pas
uniques. La colonne `uniqueness` de la vue `USER_INDEXES` peut contenir les valeurs `UNIQUE` ou `NONUNIQUE`. Le résultat sera trié par le nom de la table.

Format du résultat demandé (respecter le nom des colonnes) :

| Nom de la table | Nom de l'index | Unicité |
|-----------------|----------------|---------|

```sql

```

### Dictionnaire 4

Afficher le nom, la date de création, le type et le statut des objets créés dans votre schéma. (`USER_OBJECTS`).
Spécifier si l’objet est valide ou invalide par `YES` ou `NO` et spécifier la date sous la forme _jour-mois-année heure:
minute_  soit, par exemple,  `04-02-2019 08:40`.  
Le résultat sera trié par type de l’objet et nom de l’objet

| Type de l'objet | Nom de l'objet | Date de Création | Statut |
|-----------------|----------------|------------------|--------|

```sql

```

### Dictionnaire 5

Consulter les vues `USER_CONSTRAINTS` et `USER_CONS_COLUMNS` pour afficher toutes les contraintes de colonnes spécifiées
sur une table, dont le début, du nom est donné en paramètre, en lettres majuscules ou lettres minuscules. On affichera :
Le nom de la colonne, le nom de la contrainte, le type de contrainte :  `CHECK` pour `C`, `PRIMARY` pour `P`, `REFERENTIEL` pour `R`
et `UNIQUE` pour `U`, si la contrainte est différée ou non (`YES` /`NO`) , le statut de la contrainte ainsi que la condition
de la contrainte.  Le résultat sera trié par le nom de la colonne.

| Nom de la colonne | Nom de la contrainte | Type | Différée | Statut | La condition |
| ----------------- | -------------------- | ---- | -------- | ------ | ------------ |

```sql

```

### Dictionnaire 6

Générer dans un fichier `DropTable.sql`, les commandes qui permettent d’effacer toutes les tables de votre schéma. Le fichier `DropTable.sql` ne doit contenir que les commandes `DROP`. Spécifier les commandes pour supprimer les entêtes et les bas de page. Écrire les commandes et le afficher le contenu du
fichier `DropTable.sql`.

```sql

```

## L’architecture à niveaux d’une BD

Exécuter le fichier `ListeEmployesProjets.sql`. Celui-ci contient une procédure stockée. Cette procédure affiche le nom
et le *prénom* des employés ainsi que le *nom* du projet sur lequel ils travaillent.

### Concept de base 1

Afficher le statut, la date et l’heure de création de la procédure ListeEmpPro (Vue USER_OBJECTS).

```sql

```

Ajouter une colonne à la table `Employes` et spécifier quel niveau du schéma de la base a été modifié.

```sql

```

> 

Afficher le statut de la procédure ListeEmpPro et expliquer le résultat obtenu

```sql

```

> 

Exécuter la procédure `ListeEmpPro` et expliquer pourquoi, après l’ajout de la colonne dans la table `Employes` et sans modifier la procédure `ListeEmpPro` cette procédure affiche des résultats corrects.

> 

### Concept de base 2

Créer un index pour spécifier l’unicité du _nom_ et _prénom_ de l’employé et spécifier quel niveau du schéma de la base a été modifié.

```sql

```

> 

Pourquoi crée-t-on des index?

> 

Exécuter la procédure `ListeEmpPro` et expliquer pourquoi, après la création de l’index la procédure `ListeEmpPro` affiche des résultats corrects.

> 

### Concept De Base 3

Ajouter une contrainte sur la table `Employes` et spécifier quel niveau du schéma de la base a été modifié.

```sql

```

> 


Exécuter la procédure `ListeEmpPro` et expliquer pourquoi, après la création de la contrainte, la
procédure `ListeEmpPro` affiche des résultats corrects.

> 

### Concept de base 4

Supprimer la colonne `nom` de la table `Employes` et spécifier quel niveau du schéma de la base a été modifié.

```sql

```

> 

Afficher le statut de la procédure `ListeEmpPro` et expliquer le résultat obtenu. Expliquer pourquoi, après la
suppression de la colonne `nom` de la table `Employes` la procédure `ListeEmpPro` affiche un message d’erreur.

> 
