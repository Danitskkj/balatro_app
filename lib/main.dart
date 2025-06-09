import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/colecao_screen.dart';
import 'screens/perfil_screen.dart';

void main() {
  runApp(const BalatroWikiApp());
}

class BalatroWikiApp extends StatelessWidget {
  const BalatroWikiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BalatroApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        // Fundo mais suave
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          // AppBar transparente
          elevation: 0,
          foregroundColor: Colors.deepPurple,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurple,
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(color: Colors.deepPurpleAccent),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
        // Corrigido para usar CardThemeData em vez de CardTheme
        cardTheme: const CardThemeData(
          color: Color(0xFF1E1E1E),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CollectionScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF1A1A1A),
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple.withOpacity(0.4),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                activeIcon: Icon(Icons.home_rounded, size: 28),
                label: 'Início',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded),
                activeIcon: Icon(Icons.grid_view_rounded, size: 28),
                label: 'Coleção',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                activeIcon: Icon(Icons.person_rounded, size: 28),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
