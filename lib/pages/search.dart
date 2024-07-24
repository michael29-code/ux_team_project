import 'package:flutter/material.dart';

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Recipes and Users'),
          bottom: TabBar(
            indicatorColor: Color(0xFFA70739), // Set the indicator color to red
            labelColor:
                Color(0xFFA70739), // Set the selected label color to red
            unselectedLabelColor:
                Colors.grey, // Set the unselected label color to grey
            tabs: [
              Tab(text: 'Recipes'),
              Tab(text: 'Users'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RecipesPage(),
            UsersPage(),
          ],
        ),
      ),
    );
  }
}

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return RecipeCard();
        },
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}
