import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/profile.dart'; // Pastikan jalur ini benar
import 'pages/create_recipe.dart';
import 'pages/shopping_list.dart';
import 'pages/category_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Tema aplikasi
        textTheme: GoogleFonts.istokWebTextTheme(Theme.of(context).textTheme),
      ),
      home: const CategoryList(),
    );
  }
}
