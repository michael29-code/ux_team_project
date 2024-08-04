import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appInformation.dart';
import 'profile.dart';

class HelpContactUsPage extends StatelessWidget {
  const HelpContactUsPage({super.key});

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
            'Help & Contact Us',
            style: GoogleFonts.istokWeb(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
      
                // Help Center Box
                _buildInfoSection(
                  context,
                  'Help Center',
                  'Understand how we protect your privacy.',
                ),
                _buildInfoSection(
                  context,
                  'Terms and Privacy Policy',
                  'Get solutions to common problems.',
                ),
                _buildInfoSection(
                  context,
                  'App Information',
                  'Learn more about our app.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppVersionPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection(
      BuildContext context, String title, String description,
      {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.white, // Warna kotak
                borderRadius: BorderRadius.circular(23),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.istokWeb(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: GoogleFonts.istokWeb(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 107, 107, 107),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HelpContactUsPage(),
  ));
}
