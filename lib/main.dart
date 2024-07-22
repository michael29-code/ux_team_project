import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/profile.dart'; // Pastikan jalur ini benar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Tema aplikasi
        textTheme: GoogleFonts.istokWebTextTheme(Theme.of(context).textTheme),
      ),
      home: const SettingsProfilePage(),
    );
  }
}
