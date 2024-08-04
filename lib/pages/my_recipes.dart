import 'package:flutter/material.dart';
import 'package:ux_team_project/models/food_category_model.dart';
import 'package:ux_team_project/pages/communityRecipe.dart';
import 'package:ux_team_project/pages/create_recipe.dart';
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

  void _getCategories() {
    foodCategories = FoodCategoryModel.getFoodCategories();
  }

  @override
  Widget build(BuildContext context) {
    // print('Building MyRecipes');
    _getCategories();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityRecipePage()),
              );
            },
            child: Container(
              child: Image.asset('assets/logo_app.png'),
              width: 150,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateRecipe()),
                );
              },
              child: Text(
                '+ Add Recipe',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          centerTitle: true,
          backgroundColor: const Color(0xFFA70739),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        drawer: Sidebar(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: Icon(Icons.filter_list_rounded),
                        onPressed: () {
                          showButtomSheetMethod(context);
                        },
                      ),
                      // padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                    childAspectRatio: .65,
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

  Future<dynamic> showButtomSheetMethod(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.fromLTRB(25, 15, 25, 7),
          height: 165,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Filter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Delete Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: const Color(0xFFA70739),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              // THIS PART
              Container(
                // height: 30,
                width: double.infinity,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  children: List.generate(
                    foodCategories.length,
                    (index) {
                      return _foodCategorySection(index);
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Container _foodCategorySection(int index) {
    String categoryName = foodCategories[index].categoryName;
    Color textColor =
        categoryName == '+ Add Category' ? Colors.red.shade800 : Colors.black;

    return Container(
      child: Text(
        foodCategories[index].categoryName,
        style: TextStyle(
          color: textColor,
        ),
      ),
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
