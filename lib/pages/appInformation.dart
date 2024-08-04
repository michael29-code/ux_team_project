import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help.dart';

class AppVersionPage extends StatelessWidget {
  const AppVersionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFA70739), // Menetapkan warna ikon
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'App Version',
            style: GoogleFonts.istokWeb(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Copy Me That',
                  style: GoogleFonts.istokWeb(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'version 1.0.0',
                  style: GoogleFonts.istokWeb(
                    textStyle: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 16),
                Text(
                  '© 2010-2025 CopyMeThat',
                  style: GoogleFonts.istokWeb(
                    textStyle: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan navigasi atau aksi lain yang diperlukan di sini
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA70739),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'Licenses',
                    style: GoogleFonts.istokWeb(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AppVersionPage(),
  ));
}
