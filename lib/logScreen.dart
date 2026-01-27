import "package:flutter/widgets.dart";
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:suky_project/HomePage.dart";
import "package:suky_project/MainPage.dart";

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.01,
            height: MediaQuery.of(context).size.width * 0.99,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/HeaderLog.png'),
                fit: .fitWidth,
              ),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              padding: .all(35),
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .circular(40),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: .start,
                      children: [
                        Text(
                          'Войти',
                          style: GoogleFonts.sourceCodePro(
                            fontSize: 26,
                            fontWeight: .w600,
                            color: Color(0xff03314B),
                          ),
                          textAlign: .start,
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    TextField(
                      style: GoogleFonts.inter(fontSize: 14,fontWeight: .w500,),
                      decoration: InputDecoration(
                        prefixIconColor: Color(0xff8A19D6),
                        prefixIcon: Padding(padding: .only(left: 12), child: Icon(Icons.mail)),
                        hintText: 'admin@email.com',
                        hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: .w500, color: Color(0xff64748B)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE2E8F0), width: 1.0),
                          borderRadius: .circular(90),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff8A19D6), width: 2.0),
                          borderRadius: .circular(90)
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      style: GoogleFonts.inter(fontSize: 14,fontWeight: .w500,),
                      decoration: InputDecoration(
                        prefixIconColor: Color(0xff8A19D6),
                        prefixIcon: Padding(padding: .only(left: 12), child: Icon(Icons.lock)),
                        hintText: '***',
                        hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: .w500, color: Color(0xff64748B)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE2E8F0), width: 1.0),
                          borderRadius: .circular(90),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff8A19D6), width: 2.0),
                            borderRadius: .circular(90)
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: .end,
                      children: [
                        GestureDetector(
                          child: Text(
                            'Забыли пароль?',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: .w600,
                              color: Color(0xff8A19D6),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));},
                            child: Text(
                              "Войти",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: .w700,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff8A19D6),
                              minimumSize: Size(double.infinity, 60),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Expanded(
                          child: Divider(thickness: 2, color: Color(0xffCBD5E1)),
                        ),
                        Padding(
                          padding: .all(8),
                          child: Text(
                            'Или',
                            style: GoogleFonts.inter(
                              fontWeight: .w600,
                              fontSize: 12,
                              color: Color(0xff64748B),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(thickness: 2, color: Color(0xffCBD5E1)),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Image.asset('assets/google.png'),
                            label: Text(
                              "Google",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: .w700,
                                color: Color(0xff000000),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 2,
                                color: Color(0xffCBD5E1)
                              ),
                              backgroundColor: Color(0xffFFFFFF),
                              minimumSize: Size(double.infinity, 60),
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
}
