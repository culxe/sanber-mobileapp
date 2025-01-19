import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            child: Column(
              children: [
                // Row untuk ikon menu dan search
                Row(
                  children: [
                    Image.asset(
                      'assets/menu_icon.png',
                      width: 40,
                      height: 40,
                    ),
                    const Spacer(), // Menggunakan Spacer agar otomatis memberi jarak
                    Image.asset(
                      'assets/Search_Icon.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                // Row untuk teks Settings
                Row(
                  children: [
                    Text(
                      'Settings',
                      style: GoogleFonts.poppins(
                          fontSize: 36, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Expanded untuk ListView agar tetap fleksibel
                Expanded(
                  child: ListView(
                    children: [
                      // Contoh baris pertama di ListView
                      Row(
                        children: [
                          Image.asset(
                            'assets/Icon_Profile.png', // Ikon dari assets
                            width: 56, // Lebar ikon
                            height: 56,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profile Settings',
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              Text(
                                'Settings regarding your profile',
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/arrow-forward-circle-outline.png', // Ikon dari assets
                            width: 16, // Lebar ikon
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Image.asset(
                            'assets/Icon_News.png', // Ikon dari assets
                            width: 56,
                            height: 56,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'News settings',
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              Text(
                                'Choose your favourite topics',
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/arrow-forward-circle-outline.png', // Ikon dari assets
                            width: 16, // Lebar ikon
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Image.asset(
                            'assets/Icon_Notif.png', // Ikon dari assets
                            width: 56, // Lebar ikon
                            height: 56,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notifications',
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              Text(
                                'When would you like to be notified',
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/arrow-forward-circle-outline.png', // Ikon dari assets
                            width: 16, // Lebar ikon
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Image.asset(
                            'assets/Icon_Subs.png', // Ikon dari assets
                            width: 56,
                            height: 56,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Subscriptions',
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              Text(
                                'Currently, you are in Starter Plan',
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/arrow-forward-circle-outline.png', // Ikon dari assets
                            width: 16, // Lebar ikon
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Other',
                        style: GoogleFonts.poppins(
                            fontSize: 36, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Image.asset(
                            'assets/Icon_Bugs.png', // Ikon dari assets
                            width: 56,
                            height: 56,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bug report',
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              Text(
                                'Report bugs very easy',
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/arrow-forward-circle-outline.png', // Ikon dari assets
                            width: 16, // Lebar ikon
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Image.asset(
                            'assets/Icon_Share.png', // Ikon dari assets
                            width: 56,
                            height: 56,
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Share the app',
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                              Text(
                                'Share on social media network',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/arrow-forward-circle-outline.png', // Ikon dari assets
                            width: 16, // Lebar ikon
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
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
