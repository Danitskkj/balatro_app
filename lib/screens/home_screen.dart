import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BalatroApp')),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/balatro.png',
                  width: 180,
                  height: 180,
                ),
              ),

              const SizedBox(height: 40),

              // Informação do jogo
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.deepPurple.withOpacity(0.3)),
                ),
                child: const Text(
                  'Balatro é um jogo de construção de baralhos com mecânicas inspiradas no pôquer. O objetivo é superar metas de pontos crescentes utilizando combinações estratégicas de cartas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Créditos
              Text(
                'App feito por: Daniel e Thierry',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
