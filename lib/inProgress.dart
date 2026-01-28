import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky_project/profileEdit.dart';

class inProgressScreen extends StatelessWidget {
  const inProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(20),
      child: Column(
        children: [
          Row(
            children: [
              PopupMenuButton<String>(
                offset: Offset(0, 55),
                color: Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                    borderRadius: .circular(15)
                ),
                elevation: 4,
                child: Image.asset('assets/images/iconl.png'),
                onSelected: (value) {
                  if (value == 'edit') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileEditScreen(),
                      ),
                    );
                  }
                },
                itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'edit',
                    height: 40,
                    padding: .all(0),
                    child: Container(
                      padding: .symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Icon(Icons.edit, color: Colors.black),
                          SizedBox(width: 10),
                          Text(
                            'Изменить',
                            style: GoogleFonts.sourceSans3(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),),
                  ),
                  PopupMenuItem(
                    value: 'exit',
                    height: 50,
                    padding: .zero,
                    child: Container(
                      margin: .symmetric(horizontal: 10, vertical: 5),
                      padding: .symmetric(horizontal: 5, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: .circular(10),
                        color: Color(0x15B66DFF),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Выйти',
                            style: GoogleFonts.sourceSans3(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fulano', style: GoogleFonts.sourceSans3(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    )),
                    Text(' Администратор', style: GoogleFonts.sourceSans3(
                        color: Color(0xFF8C8C8C),
                        fontSize: 12
                    ))
                  ],
                ),
              ),
              Spacer(),
              Icon(Icons.notifications_none),
            ],
          ),
          Spacer(),
          Center(
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Icon(Icons.wifi_off_rounded, size: 160, color: Color(0xffC7C7C7),),
                SizedBox(height: 8,),
                Text('В разработке!', style: GoogleFonts.sourceSans3(fontWeight: .w700, fontSize: 20, color: Color(0xff03314B)),),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}


