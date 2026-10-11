import 'package:flutter/material.dart';

class Plat {
  final String nom;
  final String description;
  final double prix;
  final String image;
  final String categorie;

  const Plat({
    required this.nom,
    required this.description,
    required this.prix,
    required this.image,
    required this.categorie,
  });
}

// Liste catégories
const List<String> categories = [
  'Formules',
  'Entrées',
  'Plats',
  'Desserts',
  'Boissons',
];

// Données du menu
const List<Plat> plats = [
  // Les différentes formules
  Plat(
    nom: 'Formule Pranzo',
    description: "Antipasto + plat ou plat + dolce, selon l'humeur de Nonna.",
    prix: 16.90,
    image: 'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=600',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Panino',
    description: 'Panino grillé mozzarella et épinards, boisson au choix.',
    prix: 11.50,
    image: 'https://images.pexels.com/photos/1885578/pexels-photo-1885578.jpeg?w=600',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Pizzaiolo',
    description: 'Pizza au feu de bois au choix et dolce du jour.',
    prix: 15.00,
    image: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600',
    categorie: 'Formules',
  ),

  // Entrées
  Plat(
    nom: 'Bruschetta al pomodoro',
    description: "Pain grillé, tomates fraîches, basilic et huile d'olive.",
    prix: 6.50,
    image: 'https://images.pexels.com/photos/7432991/pexels-photo-7432991.jpeg?w=600',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Burrata e pomodori',
    description: 'Burrata crémeuse des Pouilles, tomates cerises et basilic.',
    prix: 9.50,
    image: 'https://images.pexels.com/photos/11725599/pexels-photo-11725599.jpeg?w=600',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Arancini siciliani',
    description:
        'Boulettes de risotto croustillantes, cœur fondant mozzarella.',
    prix: 7.50,
    image: 'https://images.pexels.com/photos/29286763/pexels-photo-29286763.jpeg?w=600',
    categorie: 'Entrées',
  ),

  // Plats
  Plat(
    nom: 'Lasagne della Nonna',
    description: 'Pâtes fraîches, ragù mijoté, béchamel et parmesan gratiné.',
    prix: 14.90,
    image: 'https://www.themealdb.com/images/media/meals/wtsvxx1511296896.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Spaghetti alla carbonara',
    description:
        "La vraie recette : jaune d'œuf, guanciale, pecorino et poivre.",
    prix: 13.90,
    image: 'https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Penne alla bolognese',
    description: 'La recette de Nonna : sauce mijotée 4 h et parmesan.',
    prix: 12.90,
    image: 'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=600',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Risotto al salmone',
    description: 'Risotto crémeux, pavé de saumon grillé et asperges vertes.',
    prix: 17.50,
    image: 'https://www.themealdb.com/images/media/meals/xxrxux1503070723.jpg',
    categorie: 'Plats',
  ),

  // Desserts
  Plat(
    nom: 'Tiramisù della Nonna',
    description: "Mascarpone, biscuits imbibés d'espresso et cacao amer.",
    prix: 6.50,
    image: 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=600',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Panna cotta alle fragole',
    description: 'Crème vanillée et fraises fraîches.',
    prix: 5.90,
    image: 'https://images.unsplash.com/photo-1488477181946-6428a0291777?w=600',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Torta al cioccolato',
    description: 'Gâteau fondant, ganache et chantilly au cacao.',
    prix: 6.90,
    image: 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600',
    categorie: 'Desserts',
  ),

  // Boissons
  Plat(
    nom: 'Cappuccino',
    description: 'Espresso italien et mousse de lait onctueuse.',
    prix: 3.50,
    image: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=600',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Limonata alla fragola',
    description: 'Limonade maison, fraises et menthe fraîche.',
    prix: 4.50,
    image: 'https://images.unsplash.com/photo-1497534446932-c925b458314e?w=600',
    categorie: 'Boissons',
  ),
  Plat(
    nom: "Spremuta d'arancia",
    description: "Jus d'oranges de Sicile pressées minute.",
    prix: 4.00,
    image: 'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?w=600',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Spritz analcolico',
    description: "Le spritz sans alcool : bitter, orange et eau pétillante.",
    prix: 5.50,
    image: 'https://images.pexels.com/photos/24743547/pexels-photo-24743547.jpeg?w=600',
    categorie: 'Boissons',
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu de Chez Nonna & Co',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //selectionne la premiere categorie par defaut
  String _categorieSelectionnee = categories[0];

  void _selectionnerCategorie(String categorie) {
    setState(() {
      _categorieSelectionnee = categorie;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Plat> platsFiltres = plats
        .where((plat) => plat.categorie == _categorieSelectionnee)
        .toList();

    final bool paysage =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Menu de Chez Nonna & Co'),
      ),
      body: Column(
        children: [
          //bar catégories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                //un btn par catégorie de la liste
                for (String categorie in categories)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                      onPressed: () => _selectionnerCategorie(categorie),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: categorie == _categorieSelectionnee
                            ? Colors.green.shade700
                            : Colors.grey[200],
                        foregroundColor: categorie == _categorieSelectionnee
                            ? Colors.white
                            : Colors.black,
                      ),
                      child: Text(categorie),
                    ),
                  ),
              ],
            ),
          ),
          //layout responsive : en protrait une carte par ligne et en paysage 2 cartes cote à cote
          Expanded(
            child: paysage
                ? GridView.builder(
                    itemCount: platsFiltres.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 270,
                        ),
                    itemBuilder: (BuildContext context, int index) {
                      return PlatCard(plat: platsFiltres[index]);
                    },
                  )
                : ListView.builder(
                    itemCount: platsFiltres.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PlatCard(plat: platsFiltres[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

//carte réutilisable pour les plats
class PlatCard extends StatelessWidget {
  const PlatCard({super.key, required this.plat});

  final Plat plat;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            plat.image,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
            //affiche une icone si l'image ne charge pas
            errorBuilder: (context, error, stackTrace) => Container(
              height: 150,
              color: Colors.grey[300],
              child: const Center(child: Icon(Icons.restaurant, size: 50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        plat.nom,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${plat.prix.toStringAsFixed(2).replaceAll('.', ',')} €',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  plat.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
