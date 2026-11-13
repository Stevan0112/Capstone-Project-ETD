import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double musicVolume = 0.7;
  double sfxVolume = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'SETTINGS',
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

              const Text(
                'AUDIO SETTINGS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Color(0xFF761F28),
                ),
              ),

              const SizedBox(height: 20),

              // Music volume
              Row(
                children: [
                  const SizedBox(
                    width: 130,
                    child: Text('Music Volume'),
                  ),
                  Expanded(
                    child: Slider(
                      value: musicVolume,
                      onChanged: (value) {
                        setState(() {
                          musicVolume = value;
                        });
                      },
                      activeColor: const Color(0xFF761F28),
                    ),
                  ),
                  Text('${(musicVolume * 100).round()}%'),
                ],
              ),

              // Sound effects volume
              Row(
                children: [
                  const SizedBox(
                    width: 130,
                    child: Text('SFX Volume'),
                  ),
                  Expanded(
                    child: Slider(
                      value: sfxVolume,
                      onChanged: (value) {
                        setState(() {
                          sfxVolume = value;
                        });
                      },
                      activeColor: const Color(0xFF761F28),
                    ),
                  ),
                  Text('${(sfxVolume * 100).round()}%'),
                ],
              ),

              const Spacer(),

              const Center(
                child: Text(
                  'ESCAPE THE DUNGEON',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3,
                    color: Color(0xFF55504D),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}