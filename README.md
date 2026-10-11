# Menu de Chez Nonna & Co

Cette application Flutter permet d'afficher et de naviguer dans le menu d'un restaurant. 
**Chez Nonna & Co** est une trattoria italienne qui revisite les recettes de grand-mère : bruschetta, lasagnes, carbonara, tiramisù…

## Fonctionnalités

- Barre de catégories qui défile horizontalement : **Formules, Entrées, Plats, Desserts, Boissons**.
- La catégorie sélectionnée est mise en avant en vert.
- Quand on sélectionne une catégorie, la liste verticale affiche uniquement ses plats.
- Chaque plat est affiché dans une carte avec son **nom**, une **image**, son **prix** et une **courte description** (2 lignes maximum).
- Fonctionne en mode **portrait** et **paysage**.

## Choix de mise en page

| Widget | Utilisation |
|---|---|
| `Column` | Organise l'écran verticalement : barre des catégories en haut, liste des plats en dessous. Sert aussi à empiler l'image et les infos dans chaque carte. |
| `Row` | Barre des catégories (boutons côte à côte) et ligne nom du plat / prix dans la carte. |
| `SingleChildScrollView` | Défilement horizontal de la barre des catégories. |
| `ListView.builder` | Liste verticale des plats en mode portrait (une carte par ligne). |
| `GridView.builder` | Grille de 2 cartes par ligne en mode paysage, pour utiliser la largeur de l'écran. |
| `Expanded` | La liste des plats prend toute la hauteur restante sous la barre des catégories. Dans la carte, le nom prend la place disponible et pousse le prix à droite. |
| `Card` | Présentation de chaque plat (ombre et coins arrondis). |
| `Padding`, `SizedBox`, `Container` | Espacements et badge du prix. |
| `MediaQuery` | Détecte l'orientation pour choisir entre la liste (portrait) et la grille (paysage). |

## Organisation du code

Tout le code est dans `lib/main.dart` :

- `Plat` : classe qui représente un plat (nom, description, prix, image, catégorie).
- `categories` et `plats` : données du menu codées en dur.
- `MenuPage` : écran principal (StatefulWidget). Il garde en mémoire la catégorie sélectionnée et met à jour l'affichage avec `setState`.
- `PlatCard` : widget réutilisable qui affiche un plat dans une carte. Il est utilisé pour tous les plats, ce qui évite de dupliquer le code.


Les images des plats sont chargées depuis internet (Unsplash, Pexels, TheMealDB) : une connexion est nécessaire pour les afficher. Sans connexion, une icône s'affiche à la place.
