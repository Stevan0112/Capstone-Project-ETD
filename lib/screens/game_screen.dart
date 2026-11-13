import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
          child: Stack(
            children: [
              // Temporary dungeon environment
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dark_mode,
                      size: 75,
                      color: Color(0xFF761F28),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'THE DUNGEON',
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD5D0C7),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Something is watching you...',
                      style: TextStyle(
                        color: Color(0xFF88817A),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              // Player HUD
              Positioned(
                top: 15,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PLAYER',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Color(0xFFD5D0C7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 150,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: const Color(0xFF55504D),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 110,
                          color: const Color(0xFF761F28),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'HP: 80 / 100',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFA6A19A),
                      ),
                    ),
                  ],
                ),
              ),

              // Pause button
              Positioned(
                top: 10,
                right: 15,
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: const Color(0xFF252525),
                        title: const Text('PAUSED'),
                        content: const Text(
                          'Your journey is temporarily suspended.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('RESUME'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'MAIN MENU',
                              style: TextStyle(
                                color: Color(0xFFCC5555),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.pause,
                    color: Color(0xFFD5D0C7),
                    size: 30,
                  ),
                ),
              ),

              // Companion placeholder
              Positioned(
                bottom: 20,
                right: 20,
                child: Column(
                  children: [
                    const Icon(
                      Icons.auto_awesome,
                      size: 35,
                      color: Color(0xFFA6A19A),
                    ),
                    const SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: const Color(0xFF252525),
                            title: const Text('COMPANION'),
                            content: const Text(
                              '"Oh, you are awake. '
                              'Wonderful. Try not to die this time."',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('CLOSE'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Text(
                        'TALK',
                        style: TextStyle(
                          color: Color(0xFFD5D0C7),
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}