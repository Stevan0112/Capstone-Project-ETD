import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/main_menu_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Force landscape orientation on supported mobile devices.
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const EscapeTheDungeonApp());
}

class EscapeTheDungeonApp extends StatelessWidget {
  const EscapeTheDungeonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escape The Dungeon',
      debugShowCheckedModeBanner: false,

      // Global dark fantasy theme
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF111111),
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF761F28),
          secondary: Color(0xFFA6A19A),
          surface: Color(0xFF252525),
        ),
      ),

      home: const MainMenuScreen(),
    );
  }
}