import 'package:flutter/material.dart';

// Modelo que representa uma carta (Joker)
// Contém informações como nome, efeito, custo, raridade e caminho da imagem
class Joker {
  final int id;
  final String name;
  final String effect;
  final String cost;
  final String rarity;
  final String imagePath;

  Joker({
    required this.id,
    required this.name,
    required this.effect,
    required this.cost,
    required this.rarity,
    required this.imagePath,
  });
}

// Define cores associadas a cada nível de raridade das cartas
Map<String, Color> rarityColors = {
  'Comum': Color(0xFF0093ff),
  'Incomum': Color(0xFF35bd86),
  'Raro': Color(0xFFff4c40),
  'Lendário': Color(0xFFab5bb5),
};

// Dados de exemplo de alguns Jokers
final List<Joker> jokers = [
  Joker(
    id: 1,
    name: 'Curinga',
    effect: '+4 Mult',
    cost: '\$2',
    rarity: 'Comum',
    imagePath: 'assets/jokers/curinga.png',
  ),
  Joker(
    id: 2,
    name: 'Curinga Guloso',
    effect: 'Cartas jogadas com naipe de Paus dão +3 Mult quando pontuadas',
    cost: '\$5',
    rarity: 'Comum',
    imagePath: 'assets/jokers/curinga_guloso.png',
  ),
  Joker(
    id: 3,
    name: 'Meio Curinga',
    effect: '+20 Mult se a mão jogada contem 3 ou menos cartas',
    cost: '\$5',
    rarity: 'Comum',
    imagePath: 'assets/jokers/meio_curinga.png',
  ),
  Joker(
    id: 4,
    name: 'Mímico',
    effect: 'Reativa a habilidade de todas as cartas na mão',
    cost: '\$5',
    rarity: 'Incomum',
    imagePath: 'assets/jokers/mimico.png',
  ),
  Joker(
    id: 5,
    name: 'Fibonacci',
    effect:
        'Cada played Ás, 2, 3, 5, ou 8 jogado dá +8 Multi quando pontuado',
    cost: '\$8',
    rarity: 'Incomum',
    imagePath: 'assets/jokers/fibonacci.png',
  ),
];
