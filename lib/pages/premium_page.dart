import 'package:flutter/material.dart';
import 'package:ux_team_project/widgets/header.dart';
import 'package:ux_team_project/widgets/sidebar.dart';
import 'package:ux_team_project/widgets/subscription_spinner.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Header(),
        drawer: Sidebar(),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFA70739), Color(0xFF410316)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/topi_masak.png'),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text(
                    'Want to explore more recipes?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas lacus convallis metus rhoncus',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // height: 300,
                  child: SubscriptionSpinner(),
                  // decoration: BoxDecoration(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // decoration: BoxDecoration(color: Colors.black),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black
                    ),
                    onPressed: () {},
                    child: Text(
                      'Get Subscription Now',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
