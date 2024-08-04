import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux_team_project/controller/navigation_controller.dart';
import 'package:ux_team_project/pages/communityRecipe.dart';
import 'package:ux_team_project/pages/meal_planner.dart';
import 'package:ux_team_project/pages/my_recipes.dart';
import 'package:ux_team_project/pages/profile.dart';
import 'package:ux_team_project/pages/shopping_list.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navController = Provider.of<NavController>(context);

    final List<Widget> _pages = [
      CommunityRecipePage(),
      MyRecipes(),
      ShoppingList(),
      MealPlanner(),
      SettingsProfilePage(),
    ];

    return Scaffold(
      body: _pages[navController.selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFEEEEEE),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        selectedIndex: navController.selectedIndex,
        onDestinationSelected: (int index) {
          navController.setIndex(index);
        },
      ),
    );
  }
}
