import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ux_team_project/controller/navigation_controller.dart';

import 'package:ux_team_project/pages/appInformation.dart';
import 'package:ux_team_project/pages/communityRecipe.dart';
import 'package:ux_team_project/pages/login.dart';
import 'package:ux_team_project/pages/meal_planner.dart';
import 'package:ux_team_project/pages/premium_page.dart';
import 'package:ux_team_project/pages/profile.dart';
import 'package:ux_team_project/pages/recipeDetail.dart';
import 'package:ux_team_project/pages/search.dart';
import 'package:ux_team_project/widgets/navbar.dart';
import 'pages/appInformation.dart';
import 'pages/profile.dart';
// import 'pages/create_recipe.dart';
// import 'pages/shopping_list.dart';
// import 'pages/help.dart';

import 'package:ux_team_project/pages/my_recipes.dart';
import 'pages/profile.dart'; // Pastikan jalur ini benar
import 'pages/create_recipe.dart';
import 'pages/shopping_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NavController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Tema aplikasi
          // textTheme: GoogleFonts.istokWebTextTheme(Theme.of(context).textTheme),
          ),
      home: NavBar(),
    );
  }
}
