import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailnewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/Back_Icon.png',
            width: 24,
            height: 24,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/detailimage_BgImage.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'To build responsibly, tech needs to do more than just hire chief ethics officers',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '17 June 2023 — 4:48 PM',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/Avatar.png'),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Samuel Newtor',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(
                      'New teams in tech companies',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
