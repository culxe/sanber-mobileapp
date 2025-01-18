import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_8_widget/main.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 86),
                width: double.infinity,
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/rectangle1.png'),
                  ),
                ),
              ),
              Text(
                'Yuk, Membaca Bersama\nSanber News',
                style: GoogleFonts.arimo(
                    fontSize: 21, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                'BeritaTerpercaya, Di Ujung JariAnda',
                style: TextStyle(fontSize: 15),
              ),
              Spacer(),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => BottomNavBar(initialIndex: 0)),
                    );
                  },
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3498DB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Mendaftar',
                    style: GoogleFonts.arimo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3498DB)),
                  ),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color(0xff3498DB)),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStartedPage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
