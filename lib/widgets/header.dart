import 'package:flutter/material.dart';
import 'package:ux_team_project/pages/communityRecipe.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
