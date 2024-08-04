import 'package:flutter/material.dart';
import 'package:ux_team_project/pages/communityRecipe.dart';
import 'package:ux_team_project/pages/recipeDetail.dart';
import 'package:ux_team_project/widgets/search_bar.dart';
import 'package:ux_team_project/widgets/sidebar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: search(),
    );
  }
}

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Sidebar(),
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
            centerTitle: true,
            backgroundColor: const Color(0xFFA70739),
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                color: Color(0xFFFEF7FF),
                child: TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4.0,
                      color: Color(0xFFA70739),
                    ),
                  ),
                  indicatorColor: Color(0xFFA70739),
                  labelColor: Color(0xFFA70739),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'Recipes'),
                    Tab(text: 'Users'),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              RecipesPage(),
              UsersPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          MySearchBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.69,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return RecipeCard();
              },
            ),
          ),
        ],
      ),
    );
  }
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
                'assets/food_image.png', // Replace with your food image
                width: double.infinity,
                height: 165,
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
                          style: TextStyle(color: Colors.white, fontSize: 12)),
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
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Spacer(),
                      Icon(Icons.access_time, color: Colors.white, size: 16),
                      SizedBox(width: 2),
                      Text('30 Min',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          MySearchBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/profile_pic1.png'), // Replace with your user image
                  ),
                  title: Row(
                    children: [
                      Text('Person1'),
                      SizedBox(width: 5),
                      Icon(Icons.check_circle, color: Colors.blue, size: 16),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 2),
                          Text('4.9'),
                        ],
                      ),
                      Text('Followed by friend1 + 100 more'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
