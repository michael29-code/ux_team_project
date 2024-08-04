import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ux_team_project/controller/navigation_controller.dart';
import 'package:ux_team_project/pages/communityRecipe.dart';
import 'package:ux_team_project/pages/help.dart';
import 'package:ux_team_project/pages/login.dart';
import 'package:ux_team_project/pages/meal_planner.dart';
import 'package:ux_team_project/pages/my_recipes.dart';
import 'package:ux_team_project/pages/premium_page.dart';
import 'package:ux_team_project/pages/profile.dart';
import 'package:ux_team_project/pages/search.dart';
import 'package:ux_team_project/pages/shopping_list.dart';

// class Sidebar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final navController = Provider.of<NavController>(context);

//     return Drawer(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SettingsProfilePage()),
//               );
//             },
//             child: DrawerHeader(
//               child: Container(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 70,
//                       height: 70,
//                       child: CircleAvatar(
//                         radius: 50,
//                         backgroundImage: AssetImage('assets/profile_pic1.png'),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Container(
//                       child: IntrinsicHeight(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Username',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                               ),
//                             ),
//                             Text(
//                               'View Profile',
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 _createDrawerItem(
//                     icon: Icons.home,
//                     text: 'Home',
//                     onTap: () {
//                       navController.setIndex(0);
//                       Navigator.pop(context); // Close the drawer
//                     }),
//                 _createDrawerItem(
//                     icon: Icons.search,
//                     text: 'Search',
//                     onTap: () {
//                       navController.setIndex(1);
//                       Navigator.pop(context); // Close the drawer
//                     }),
//                 _createDrawerItem(
//                     icon: Icons.notifications,
//                     text: 'Notifications',
//                     onTap: () {
//                       navController.setIndex(2);
//                       Navigator.pop(context); // Close the drawer
//                     }),
//                 _createDrawerItem(
//                     icon: Icons.message,
//                     text: 'Messages',
//                     onTap: () {
//                       navController.setIndex(3);
//                       Navigator.pop(context); // Close the drawer
//                     }),
//                 _createDrawerItem(
//                     icon: Icons.account_circle,
//                     text: 'Profile',
//                     onTap: () {
//                       navController.setIndex(4);
//                       Navigator.pop(context); // Close the drawer
//                     }),
//                 _createDrawerItem(
//                     icon: Icons.settings,
//                     text: 'Settings',
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => SettingsProfilePage()),
//                       );
//                     }),
//                 _createDrawerItem(
//                     icon: Icons.info,
//                     text: 'Info & Help',
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => HelpContactUsPage()),
//                       );
//                     }),
//               ],
//             ),
//           ),
//           Divider(),
//           _createDrawerItem(
//               icon: Icons.logout,
//               text: 'Logout',
//               iconColors: Colors.red,
//               colors: Colors.red,
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignInPage()),
//                 );
//               }),
//         ],
//       ),
//     );
//   }

//   Widget _createDrawerItem(
//       {required IconData icon,
//       required String text,
//       Color iconColors = Colors.black54,
//       Color colors = Colors.black,
//       GestureTapCallback? onTap}) {
//     return ListTile(
//       title: Row(
//         children: [
//           Icon(
//             icon,
//             color: iconColors,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 8.0),
//             child: Text(
//               text,
//               style: TextStyle(color: colors),
//             ),
//           )
//         ],
//       ),
//       onTap: onTap,
//     );
//   }
// }


// ======== Tanpa Setting controller
class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsProfilePage()),
              );
            },
            child: DrawerHeader(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/profile_pic1.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Username',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'View Profile',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _createDrawerItem(
                    icon: Icons.home,
                    text: 'Home',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommunityRecipePage()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.people,
                    text: 'Community',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => search()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.receipt,
                    text: 'My Recipes',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyRecipes()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.shopping_cart,
                    text: 'Shopping List',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShoppingList()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.set_meal,
                    text: 'Meal Planner',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MealPlanner()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.star,
                    text: 'Premium',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumPage()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.settings,
                    text: 'Settings',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsProfilePage()),
                      );
                    }),
                _createDrawerItem(
                    icon: Icons.info,
                    text: 'Info & Help',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpContactUsPage()),
                      );
                    }),
              ],
            ),
          ),
          Divider(),
          _createDrawerItem(
              icon: Icons.logout,
              text: 'Logout',
              iconColors: Colors.red,
              colors: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     PageRouteBuilder(pageBuilder: (BuildContext context,
                //         Animation animation, Animation secondaryAnimation) {
                //       return SignInPage();
                //     }, transitionsBuilder: (BuildContext context,
                //         Animation<double> animation,
                //         Animation<double> secondaryAnimation,
                //         Widget child) {
                //       return SlideTransition(
                //         position: Tween<Offset>(
                //           begin: const Offset(1.0, 0.0),
                //           end: Offset.zero,
                //         ).animate(animation),
                //         child: child,
                //       );
                //     }),
                //     (Route route) => false);
              }),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      Color iconColors = Colors.black54,
      Color colors = Colors.black,
      GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            icon,
            color: iconColors,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(color: colors),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}