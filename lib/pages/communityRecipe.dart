import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityRecipePage(),
    );
  }
}

class CommunityRecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.wb_sunny,
                            color: Color(0xFFA70739), size: 20),
                      ),
                      TextSpan(
                        text: ' Good Morning,\n',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'Username!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Color(0xFFA70739)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Weekly Featured Recipes',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildFeaturedRecipeCard(
                    'assets/burger.jpg', 'Janet Pena', '30 Min'),
                buildFeaturedRecipeCard('assets/pizza.jpg', 'John Doe',
                    '45 Min'), // Add other images and data here
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCategoryChip('Breakfast'),
              buildCategoryChip('Lunch', isSelected: true),
              buildCategoryChip('Dinner'),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended For You',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See more',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.75,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return RecipeCard();
            },
          ),
        ],
      ),
    );
  }

  Widget buildFeaturedRecipeCard(String imagePath, String author, String time) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              imagePath, // Replace with your food image
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              child: Container(
                color: Color(0xFFA70739),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/janet_pena.jpg'), // Replace with author image
                          radius: 12,
                        ),
                        SizedBox(width: 8),
                        Text(
                          author,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.white, size: 16),
                        SizedBox(width: 5),
                        Text(time,
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryChip(String label, {bool isSelected = false}) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      selectedColor: Color(0xFFA70739),
      onSelected: (bool selected) {},
      backgroundColor: Colors.grey[200],
      labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
    );
  }
}

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              'assets/food_image.jpg', // Replace with your food image
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              child: Container(
                color: Color(0xFFA70739),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_fire_department,
                            color: Colors.white, size: 16),
                        SizedBox(width: 5),
                        Text('60 KCal',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Food Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 2),
                        Text('4.9',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Spacer(),
                        Icon(Icons.access_time, color: Colors.white, size: 16),
                        SizedBox(width: 2),
                        Text('30 Min',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
