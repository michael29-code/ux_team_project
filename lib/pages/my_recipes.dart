import 'package:flutter/material.dart';
import 'package:ux_team_project/models/food_category_model.dart';
import 'package:ux_team_project/widgets/food_card.dart';
import 'package:ux_team_project/widgets/header.dart';
import 'package:ux_team_project/widgets/search_bar.dart';
import 'package:ux_team_project/widgets/sidebar.dart';

class MyRecipes extends StatefulWidget {
  MyRecipes({super.key});

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  List<FoodCategoryModel> foodCategories = [];
  // static const IconData filter_list_rounded =
  // IconData(0xf75b, fontFamily: 'MaterialIcons');

  void _getCategories() {
    foodCategories = FoodCategoryModel.getFoodCategories();
  }

  @override
  Widget build(BuildContext context) {
    // print('Building MyRecipes');
    _getCategories();
    return SafeArea(
      child: Scaffold(
        appBar: Header(),
        drawer: Sidebar(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'My Recipes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 20),
              MySearchBar(),
              SizedBox(height: 20),
              Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        itemCount: foodCategories.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                        itemBuilder: (context, index) {
                          return _foodCategorySection(index);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Icon(Icons.filter_list_rounded),
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: const BoxDecoration(
                        color: Color(0xFFE4E4E4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const FoodCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _foodCategorySection(int index) {
    return Container(
      child: Text(foodCategories[index].categoryName),
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: const BoxDecoration(
        color: Color(0xFFE4E4E4),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
