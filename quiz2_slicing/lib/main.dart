import 'package:flutter/material.dart';

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
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/Menu_Icon.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const Spacer(), // Menggunakan Spacer agar otomatis memberi jarak
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/Search_Icon.png',
                        width: 40,
                        height: 40,
                      ),
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
                      style: TextStyle(
                        fontFamily: 'Telegraf',
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
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
                      InkWell(
                        onTap: () {},
                        child: Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Settings regarding your profile',
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {},
                        child: Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Choose your favourite topics',
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {},
                        child: Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'When would you like to be notified',
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {},
                        child: Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Currently, you are in Starter Plan',
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Other',
                        style: TextStyle(
                          fontFamily: 'Telegraf',
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {},
                        child: Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Report bugs very easy',
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {},
                        child: Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Share on social media network',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: 'Telegraf',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
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
