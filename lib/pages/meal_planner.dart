import 'package:flutter/material.dart';
import 'package:ux_team_project/widgets/header.dart';
import 'package:ux_team_project/widgets/sidebar.dart';

class MealPlanner extends StatelessWidget {
  const MealPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> date = ['9', '10', '11', '12', '13', '14', '15'];
    final List<String> dateName = [
      'Sun',
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat'
    ];

    return SafeArea(
      child: Scaffold(
        appBar: Header(),
        drawer: Sidebar(),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Meal Planner",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFA70739),),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      child: Icon(Icons.arrow_back_ios_rounded,color: const Color(0xFFA70739)),
                    ),
                    Text("Jun 9 - 15, 2024", style: TextStyle(fontSize: 15),),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFA70739),),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: const Color(0xFFA70739)
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            height: 15,
                          ),
                      itemCount: date.length,
                      itemBuilder: (BuildContext context, int index) {
                        return mealPlannerCardMethod(
                            date: date[index], dateName: dateName[index]);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container mealPlannerCardMethod(
      {required String date, required String dateName}) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: Offset(3, 5),
                ),
              ],
              color: const Color(0xFFA70739),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  dateName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 11,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: 260,
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .5,
                  blurRadius: .5,
                  offset: Offset(3, 5),
                ),
              ],
              color: const Color(0xFFF4F4F4),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Breakfast with Nasi Goreng'),
                      Text('Lunch with Nasi Padang'),
                      Text('Dinner with McD'),
                    ],
                  ),
                ),
                Icon(
                  Icons.create_rounded,
                  color: const Color(0xFFA70739),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
