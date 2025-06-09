import 'package:flutter/material.dart';
import 'jokers_screen.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coleção')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categorias',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Cards de categorias
            Expanded(
              child: ListView(
                children: [
                  _buildCollectionCategory(
                    context: context,
                    title: 'Curingas',
                    description: 'Cartas que modificam pontuações e regras',
                    color: const Color(0xFF5944bb),
                    // Cor compatível com as outras
                    icon: Icons.style,
                    count: 150,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const JokersScreen()),
                      );
                    },
                  ),

                  const SizedBox(height: 16),
                  _buildCollectionCategory(
                    context: context,
                    title: 'Cartas de Tarô',
                    description: 'Cartas de efeito único e poderoso',
                    color: const Color(0xFF7b559c),
                    // Cor solicitada
                    icon: Icons.auto_awesome,
                    count: 22,
                    onTap: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(const SnackBar(content: Text('Em breve')));
                    },
                  ),

                  const SizedBox(height: 16),
                  _buildCollectionCategory(
                    context: context,
                    title: 'Cartas de Planeta',
                    description: 'Cartas celestiais poderosas',
                    color: const Color(0xFF00a8ca),
                    // Cor solicitada
                    icon: Icons.public,
                    count: 9,
                    onTap: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(const SnackBar(content: Text('Em breve')));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCollectionCategory({
    required BuildContext context,
    required String title,
    required String description,
    required Color color,
    required IconData icon,
    required int count,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color, width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Ícone da categoria
                Icon(icon, color: color, size: 28),
                const SizedBox(width: 16),

                // Informações da categoria
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: color,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: color.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              '$count',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: color,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
