import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky_project/logScreen.dart';
import 'MainPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A19D6),
      body: SafeArea(child:
      Padding(
        padding: EdgeInsets.only(top: 150),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
          SizedBox(height: 100),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogScreen()));
            },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(25),
                  ),
                  backgroundColor: Colors.white,
              ), child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Начать ', style: GoogleFonts.sourceSans3(
                    color: Color(0xFF8A19D6), fontSize: 18, fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.navigate_next, color: Color(0xFF8A19D6), size: 25)
                ],
              ),
            ),
          )
            ],
          ),
        ),
      )),
    );
  }
}
