import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({super.key});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('aaaaaaaaaaaaaaaaaaa'),
    //   height: 20,
    //   width: 20,
    // );
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