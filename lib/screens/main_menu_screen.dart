import 'package:flutter/material.dart';

import 'game_screen.dart';
import 'load_game_screen.dart';
import 'settings_screen.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  // Reusable menu button
  Widget menuButton(
    BuildContext context,
    String text,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: 240,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFFD5D0C7),
          backgroundColor: const Color(0xFF191919),
          side: const BorderSide(
            color: Color(0xFF55504D),
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: const Color(0xFF761F28),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // Temporary background until we add dungeon artwork
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF292525),
              Color(0xFF111111),
              Color(0xFF080808),
            ],
          ),
        ),

        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),

                // Game title
                const Text(
                  'ESCAPE',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 8,
                    color: Color(0xFFD5D0C7),
                  ),
                ),

                const Text(
                  'THE DUNGEON',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6,
                    color: Color(0xFF761F28),
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'YOUR NIGHTMARE BEGINS HERE',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3,
                    color: Color(0xFF88817A),
                  ),
                ),

                const SizedBox(height: 60),

                // Menu buttons
                menuButton(context, 'NEW GAME', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const GameScreen(),
                    ),
                  );
                }),

                const SizedBox(height: 14),

                menuButton(context, 'LOAD GAME', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoadGameScreen(),
                    ),
                  );
                }),

                const SizedBox(height: 14),

                menuButton(context, 'SETTINGS', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SettingsScreen(),
                    ),
                  );
                }),

                const Spacer(),

                const Text(
                  'ESCAPE THE DUNGEON',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 2,
                    color: Color(0xFF55504D),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}