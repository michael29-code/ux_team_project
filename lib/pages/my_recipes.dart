import 'package:flutter/material.dart';
import 'package:ux_team_project/widgets/header.dart';
import 'package:ux_team_project/widgets/sidebar.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      drawer: Sidebar(),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
