import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'header.dart';
import 'help.dart';

import 'package:ux_team_project/widgets/header.dart';
import 'login.dart';

class SettingsProfilePage extends StatelessWidget {
  const SettingsProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(), // Menggunakan custom Header AppBar
      body: Column(
        children: [
          // Title di bawah AppBar
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Settings & Profile',
              style: GoogleFonts.istokWeb(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Box
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna kotak
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Colors.grey.shade300),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                'assets/profile_image.png'), // Pastikan jalur ini benar
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: GoogleFonts.istokWeb(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'email@example.com',
                                style: GoogleFonts.istokWeb(
                                  textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Information Section
                    Text(
                      'Information',
                      style: GoogleFonts.istokWeb(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildInfoSection(
                        context, 'Account', 'Manage your profile'),
                    _buildInfoSection(
                        context, 'Notification', 'Control app alerts'),
                    const SizedBox(height: 20),

                    // Settings Section
                    Text(
                      'Utilities',
                      style: GoogleFonts.istokWeb(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    _buildSettingsSection(
                        context, 'Storage and Data', 'Check data usage and storage'),
                    _buildSettingsSection(
                        context, 'App Language', 'Change app language'),
                    _buildSettingsSection(context, 'Help & Contact Us',
                        'Get support and assistance', onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HelpContactUsPage(),
                        ),
                      );
                    }),
                    const SizedBox(height: 20),

                    // Logout Button
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xFFA70739), // Warna border
                              ),
                              backgroundColor: Colors.white, // Warna latar
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              'Logout',
                              style: GoogleFonts.istokWeb(
                                textStyle: const TextStyle(
                                  color: Color(0xFFA70739), // Warna teks
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(
      BuildContext context, String title, String description) {
    return Row(
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
    );
  }

  Widget _buildSettingsSection(
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
    home: SettingsProfilePage(),
  ));
}
