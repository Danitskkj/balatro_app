import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),

            // Imagem de perfil
            ClipOval(
              child: Image.asset(
                'assets/perfil.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // Nome do jogador
            const Text(
              'Jogador',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 24),

            // Estatísticas simplificadas
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatItem('150', 'Cartas'),
                  _buildStatItem('29', 'Conquistas'),
                  _buildStatItem('97%', 'Progresso'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Lista de opções simplificada
            _buildMenuOption(
              icon: Icons.style,
              title: 'Cartas Descobertas',
              value: '150/150',
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Em breve')));
              },
            ),

            _buildMenuOption(
              icon: Icons.emoji_events,
              title: 'Conquistas',
              value: '29/31',
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Em breve')));
              },
            ),

            _buildMenuOption(
              icon: Icons.bar_chart,
              title: 'Estatísticas de Jogo',
              value: '',
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Em breve')));
              },
            ),

            const SizedBox(height: 20),

            // Botão de reset simplificado
            OutlinedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Em breve')));
              },
              icon: const Icon(Icons.refresh, color: Colors.redAccent),
              label: const Text('Resetar Progresso'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.redAccent,
                side: const BorderSide(color: Colors.redAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
        ),
      ],
    );
  }

  Widget _buildMenuOption({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: value.isNotEmpty
          ? Text(
              value,
              style: const TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
      onTap: onTap,
    );
  }
}
