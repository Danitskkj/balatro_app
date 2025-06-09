import 'package:flutter/material.dart';
import '../models/joker.dart';
import 'detalhes_jokers_screen.dart';

class JokersScreen extends StatefulWidget {
  const JokersScreen({super.key});

  @override
  State<JokersScreen> createState() => _JokersScreenState();
}

class _JokersScreenState extends State<JokersScreen> {
  String _selectedRarity = 'Todos';
  final List<String> _rarityFilters = [
    'Todos',
    'Comum',
    'Incomum',
    'Raro',
    'Lendário',
  ];

  @override
  Widget build(BuildContext context) {
    final filteredJokers = _selectedRarity == 'Todos'
        ? jokers
        : jokers.where((joker) => joker.rarity == _selectedRarity).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Curingas'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          // Filtros simples
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: _rarityFilters.length,
              itemBuilder: (context, index) {
                final rarity = _rarityFilters[index];
                final isSelected = rarity == _selectedRarity;

                // Cor baseada na raridade
                Color rarityColor = Colors.grey;
                if (rarity == 'Comum') rarityColor = const Color(0xFF0093ff);
                if (rarity == 'Incomum') rarityColor = const Color(0xFF35bd86);
                if (rarity == 'Raro') rarityColor = const Color(0xFFff4c40);
                if (rarity == 'Lendário') rarityColor = const Color(0xFFab5bb5);
                if (rarity == 'Todos') rarityColor = Colors.deepPurpleAccent;

                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChoiceChip(
                    backgroundColor: Colors.black12,
                    side: BorderSide(color: rarityColor),
                    selectedColor: rarityColor.withOpacity(0.2),
                    label: Text(
                      rarity,
                      style: TextStyle(
                        color: isSelected ? rarityColor : Colors.white70,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (selected) {
                      if (selected) {
                        setState(() {
                          _selectedRarity = rarity;
                        });
                      }
                    },
                  ),
                );
              },
            ),
          ),

          // Grid de curingas
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 71 / 115,
                // Proporção baseada em 71x95 + espaço para texto
                crossAxisSpacing: 12,
                mainAxisSpacing: 20,
              ),
              itemCount: filteredJokers.length,
              itemBuilder: (context, index) {
                final joker = filteredJokers[index];
                final rarityColor = rarityColors[joker.rarity] ?? Colors.grey;

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JokerDetailScreen(joker: joker),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      // Cartão do curinga com imagem
                      Container(
                        width: 71,
                        height: 95,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: rarityColor, width: 1.5),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            joker.imagePath,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Center(
                              child: Icon(Icons.image_not_supported, color: rarityColor, size: 40),
                            ),
                          ),
                        ),
                      ),
                      // Nome do curinga embaixo
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          joker.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}