import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFA70739), // Warna header
      // leading: IconButton(
      //   icon: const Icon(Icons.menu),
      //   onPressed: () {
      //     Scaffold.of(context).openDrawer(); // Menampilkan drawer menu jika ada
      //   },
      //   color: Colors.white, // Warna ikon hamburger menu
      // ),
      // title: SizedBox.shrink(), // Menghilangkan judul dari AppBar
      elevation: 0, // Menghilangkan bayangan di bawah header
    );
  }
}