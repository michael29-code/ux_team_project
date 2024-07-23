import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ux_team_project/pages/appInformation.dart';
import 'package:ux_team_project/pages/profile.dart';
import 'package:ux_team_project/pages/recipeDetail.dart';
import 'pages/appInformation.dart';
import 'pages/profile.dart';
// import 'pages/create_recipe.dart';
// import 'pages/shopping_list.dart';
// import 'pages/help.dart';

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
      home: recipeDetail(),
    );
  }
}
