import 'package:flutter/material.dart';
import 'package:ux_team_project/pages/recipeDetail.dart';
import 'package:ux_team_project/widgets/header.dart';
import 'package:ux_team_project/widgets/navbar.dart';
import 'package:ux_team_project/widgets/sidebar.dart';

void main() {
  runApp(MyApp());
}

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
    return SafeArea(
      child: Scaffold(
        appBar: Header(),
        drawer: Sidebar(),
        body: ListView(
          padding: EdgeInsets.only(left: 16.0, top: 16.0),
          children: [
            Row(
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
            SizedBox(height: 10),
            Text(
              'Weekly Featured Recipes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildFeaturedRecipeCard(context,
                      'assets/burger.png', 'Janet Pena', '30 Min'),
                  buildFeaturedRecipeCard(context,'assets/pizza_horizontal.png',
                      'John Doe', '45 Min'), // Add other images and data here
                  buildFeaturedRecipeCard(context,'assets/pizza_horizontal_2.png',
                      'John Doe', '45 Min'), // Add other images and data here
                ],
              ),
            ),
            SizedBox(height: 20),
            buildSectionTitle('Recommended For You'),
            buildHorizontalRecipeList(),
            SizedBox(height: 20),
            buildSectionTitle('Popular Recipes'),
            buildHorizontalRecipeList(),
            SizedBox(height: 20),
            buildSectionTitle('Editor\'s Choice'),
            buildHorizontalRecipeList(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See more',
            style: TextStyle(color: Color(0xFFA70739)),
          ),
        ),
      ],
    );
  }

  Widget buildHorizontalRecipeList() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Adjust the item count as needed
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: RecipeCard(),
          );
        },
      ),
    );
  }
}

Widget buildFeaturedRecipeCard(BuildContext context,String imagePath, String author, String time) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => recipeDetail()),
      );
    },
    child: Container(
      width: 280, // Adjust the width as needed
      margin: EdgeInsets.only(left: 8.0, right: 8.0),
      padding: EdgeInsets.only(right: 0), // No padding on the right side
      child: Card(
        color: Color(0xFFA70739),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(
                imagePath, // Replace with your food image
                width: double.infinity,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/profile_pic.png'), // Replace with author image
                        radius: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        author,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Spacer(),
                      Icon(Icons.access_time, color: Colors.white, size: 16),
                      SizedBox(width: 2),
                      Text(time,
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => recipeDetail()),
        );
      },
      child: Container(
        width: 160,
        height: 100,
        margin: EdgeInsets.only(left: 8.0, right: 0.0),
        padding: EdgeInsets.only(right: 0),
        child: Card(
          color: Color(0xFFA70739),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/popular_2.png', // Replace with your food image
                  width: double.infinity,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
