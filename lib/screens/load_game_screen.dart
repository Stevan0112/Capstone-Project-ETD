import 'package:flutter/material.dart';
import 'game_screen.dart';

class LoadGameScreen extends StatelessWidget {
  const LoadGameScreen({super.key});

  Widget saveSlot(
    BuildContext context,
    String title,
    String description,
    bool available,
  ) {
    return Container(
      width: 230,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        border: Border.all(
          color: const Color(0xFF55504D),
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFD5D0C7),
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xFFA6A19A),
              fontSize: 12,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: available
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const GameScreen(),
                        ),
                      );
                    }
                  : null,
              child: Text(available ? 'CONTINUE' : 'EMPTY'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'LOAD GAME',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                      color: Color(0xFFD5D0C7),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    saveSlot(
                      context,
                      'SAVE SLOT 01',
                      'Floor 01\nPlaytime: 00:15:32',
                      true,
                    ),
                    const SizedBox(width: 20),
                    saveSlot(
                      context,
                      'SAVE SLOT 02',
                      'No saved data.',
                      false,
                    ),
                    const SizedBox(width: 20),
                    saveSlot(
                      context,
                      'SAVE SLOT 03',
                      'No saved data.',
                      false,
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}