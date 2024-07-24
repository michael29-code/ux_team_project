import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: recipeDetail(),
    );
  }
}

class recipeDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juicy Burger'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/burger.png',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Juicy Burger',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          decorationColor: Colors.blue,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 5),
                          Text('4.9',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.local_fire_department,
                          color: Color(0xFFA70739)),
                      SizedBox(width: 5),
                      Text('60 KCal',
                          style: TextStyle(color: Color(0xFFA70739))),
                      SizedBox(width: 20),
                      Icon(Icons.access_time, color: Color(0xFFA70739)),
                      SizedBox(width: 5),
                      Text('30 Min',
                          style: TextStyle(color: Color(0xFFA70739))),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile_pic.png'),
                        radius: 16,
                      ),
                      SizedBox(width: 10),
                      Text('Janet Pena',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA70739)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- 800g - 1kg / 1.6 - 2 lb ground beef (mince), 20%+ fat\n'
                    '- Salt and pepper\n'
                    '- 3 onions, peeled and sliced into rings\n'
                    '- 2 tbsp oil\n'
                    '- 4 - 8 slices cheese of choice, I use Swiss (optional)\n'
                    '- 4 soft hamburger buns, lightly toasted\n'
                    '- Lettuce, tomato slices\n'
                    '- Ketchup, mustard, relish, sliced pickles\n'
                    '- French fries\n'
                    '- Baked potato wedges',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA70739)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Separate beef into 4 equal portions. Use hands to lightly form into patties the size of your buns (mine are about 10 cm / 4") - don\'t press hard, light fingers = soft juicy patties (see video for how I do this).\n'
                    '2. Season generously with salt and pepper on both sides. Make a dent on one side (stop burger from becoming dome shape and shrinking when cooking).\n'
                    '3. Heat 1 tbsp oil in a heavy based skillet or BBQ over high heat. Add onion and cook until wilted and caramelized. Season with salt and pepper, then remove.\n'
                    '4. Heat 1 tbsp oil until smoking. Add patties and cook for 2 minutes until deep golden with a great crust. Do not press! Flip carefully, cook for 1 minute then top with cheese (if using). Cover with lid and cook for another 1 minute until cheese is melted.\n'
                    '5. Meanwhile, toast the cut side of the buns lightly.',
                    style: TextStyle(fontSize: 18),
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
