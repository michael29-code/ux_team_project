import 'package:flutter/material.dart';
import 'package:ux_team_project/pages/recipeDetail.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({super.key});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
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
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
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
                      Icon(Icons.access_time, color: Colors.white, size: 16),
                      SizedBox(width: 2),
                      Text('30 Min',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            EditFoodBottomSheetMethod(context);
                          },
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.more_horiz,
                              color: Colors.white, size: 16))
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

  Future<dynamic> EditFoodBottomSheetMethod(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          height: 150,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.close_rounded,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    "Delete Recipe",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    "Update Recipe",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
