import 'package:flutter/material.dart';
import '../models/joker.dart';

class JokerDetailScreen extends StatelessWidget {
  final Joker joker;

  const JokerDetailScreen({super.key, required this.joker});

  @override
  Widget build(BuildContext context) {
    final rarityColor = rarityColors[joker.rarity] ?? Colors.grey;

    return Scaffold(
      appBar: AppBar(
        title: Text(joker.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card principal com imagem e info básica
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagem do curinga com tamanho fixo
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

                const SizedBox(width: 16),

                // Informações básicas
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        joker.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Raridade
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: rarityColor.withOpacity(0.1),
                          border: Border.all(color: rarityColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          joker.rarity,
                          style: TextStyle(
                            color: rarityColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Custo
                      Row(
                        children: [
                          const Text(
                            'Custo:',
                            style: TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            joker.cost,
                            style: const TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 4),

                      // ID
                      Row(
                        children: [
                          const Text(
                            'ID:',
                            style: TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '#${joker.id}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Seção de efeito
            const Text(
              'Efeito',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: rarityColor.withOpacity(0.5)),
              ),
              child: Text(
                joker.effect,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}