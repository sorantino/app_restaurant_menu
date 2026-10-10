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
    nom: 'Formule Midi',
    description: 'Entrée + plat ou plat + dessert, au choix du chef.',
    prix: 16.90,
    image: 'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=600',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Burger',
    description: 'Burger maison, frites et boisson au choix.',
    prix: 14.50,
    image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Pizza',
    description: 'Pizza au choix et dessert du jour.',
    prix: 15.00,
    image: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600',
    categorie: 'Formules',
  ),

  // Entrées
  Plat(
    nom: 'Salade fraîcheur',
    description: 'Avocat, tomates cerises, pois chiches et crudités de saison.',
    prix: 8.50,
    image: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Poke bowl',
    description: 'Riz, saumon mariné, œuf, maïs, concombre et chou rouge.',
    prix: 9.90,
    image: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Salade de quinoa',
    description: 'Quinoa, haricots verts, tomates confites et pesto.',
    prix: 7.90,
    image: 'https://images.unsplash.com/photo-1547592180-85f173990554?w=600',
    categorie: 'Entrées',
  ),

  // Plats
  Plat(
    nom: 'Entrecôte frites',
    description: 'Entrecôte grillée, frites maison et herbes fraîches.',
    prix: 21.00,
    image: 'https://images.unsplash.com/photo-1600891964092-4316c288032e?w=600',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Pavé de saumon',
    description: 'Saumon snacké, légumes croquants et sauce vierge.',
    prix: 18.50,
    image: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?w=600',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Pâtes bolognaise',
    description: 'Penne, sauce tomate mijotée au bœuf et parmesan.',
    prix: 13.90,
    image: 'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=600',
    categorie: 'Plats',
  ),

  // Desserts
  Plat(
    nom: 'Tiramisu',
    description: 'Mascarpone, biscuits imbibés de café et cacao.',
    prix: 6.50,
    image: 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=600',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Panna cotta',
    description: 'Crème vanillée et fraises fraîches.',
    prix: 5.90,
    image: 'https://images.unsplash.com/photo-1488477181946-6428a0291777?w=600',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Gâteau au chocolat',
    description: 'Gâteau fondant, ganache et chantilly au cacao.',
    prix: 6.90,
    image: 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600',
    categorie: 'Desserts',
  ),

  // Boissons
  Plat(
    nom: 'Café latte',
    description: 'Espresso et lait mousseux.',
    prix: 3.50,
    image: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=600',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Limonade à la fraise',
    description: 'Limonade maison, fraises et menthe fraîche.',
    prix: 4.50,
    image: 'https://images.unsplash.com/photo-1497534446932-c925b458314e?w=600',
    categorie: 'Boissons',
  ),
  Plat(
    nom: "Jus d'orange pressé",
    description: 'Oranges pressées minute.',
    prix: 4.00,
    image: 'https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?w=600',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Mojito sans alcool',
    description: 'Citron vert, menthe, sucre de canne et eau pétillante.',
    prix: 5.50,
    image: 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?w=600',
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
      title: 'Menu du Restaurant X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
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
  // Catégorie actuellement sélectionnée (la première par défaut)
  String _categorieSelectionnee = categories[0];

  void _selectionnerCategorie(String categorie) {
    setState(() {
      _categorieSelectionnee = categorie;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Menu du Restaurant X'),
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
                        //passage de la categorie tap en orange
                        backgroundColor: categorie == _categorieSelectionnee
                            ? Colors.orange
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
          PlatCard(plat: plats[0]),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
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
                        color: Colors.orange,
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
