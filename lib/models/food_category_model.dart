class FoodCategoryModel {
  final String categoryName;

  FoodCategoryModel({required this.categoryName});

  static List<FoodCategoryModel> getFoodCategories() {
    List<FoodCategoryModel> foodCategories = [];

    foodCategories.add(FoodCategoryModel(categoryName: 'Western Food'));
    foodCategories.add(FoodCategoryModel(categoryName: 'Indonesian Food'));
    foodCategories.add(FoodCategoryModel(categoryName: 'Indian Food'));
    foodCategories.add(FoodCategoryModel(categoryName: 'Japanese Food'));

    return foodCategories;
  }
}
