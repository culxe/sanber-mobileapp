import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon/Menu_Icon.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 59),
                  Text(
                    'NewsApp',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 32, bottom: 57),
              child: SizedBox(
                height: 311,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 311,
                      margin: EdgeInsets.only(right: 8),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/image/newss1.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 50),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 450),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              right: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'TECHNOLOGY',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '3 mins ago',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 131),
                                  Text(
                                    'Microsoft launches a deepfake detector tool ahead of US election',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/chatbubble-ellipses-outline.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Image.asset(
                                        'assets/icon/bookmark-outline.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(
                                        width: 174,
                                      ),
                                      Image.asset(
                                        'assets/icon/arrow-redo-outline.png', // Gambar ikon menu
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 311,
                      margin: EdgeInsets.only(right: 8),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/image/newss2.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 50),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 450),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              right: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'TECHNOLOGY',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '3 mins ago',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 131),
                                  Text(
                                    'Microsoft launches a deepfake detector tool ahead of US election',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icon/chatbubble-ellipses-outline.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Image.asset(
                                        'assets/icon/bookmark-outline.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(
                                        width: 174,
                                      ),
                                      Image.asset(
                                        'assets/icon/arrow-redo-outline.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'Latest News',
                style: GoogleFonts.arimo(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                List<Map<String, String>> newsItems = [
                  {
                    'category': 'TECHNOLOGY',
                    'title':
                        'Insurtech startup PasarPolis gets \$54 million — Series B',
                    'image': 'assets/image/listnews1.png',
                  },
                  {
                    'category': 'TECHNOLOGY',
                    'title':
                        'The IPO parade continues as Wish files, Bumble targets',
                    'image': 'assets/image/listnews2.png',
                  },
                  {
                    'category': 'TECHNOLOGY',
                    'title':
                        'Hypatos gets \$11.8M for a deep learning approach',
                    'image': 'assets/image/listnews3.png',
                  },
                  {
                    'category': 'TECHNOLOGY',
                    'title':
                        'To build responsibly, tech needs to do more than just hire chief ethics officers',
                    'image': 'assets/image/detailimage_BgImage.png',
                  },
                ];

                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 10,
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      newsItems[index]['image']!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    newsItems[index]['category']!,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    newsItems[index]['title']!,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
