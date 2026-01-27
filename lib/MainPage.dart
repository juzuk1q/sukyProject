import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky_project/profileEdit.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FBFF),
      body: _currentIndex == 0
          ? SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 48,
                        width: 48,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isTrue = !isTrue;
                              });
                            },
                            child: Image.asset('assets/images/iconl.png')
                        )
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
                if (isTrue)
                  Container(
                    height: 110,
                    width: 150  ,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileEditScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  backgroundColor: Colors.white
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.edit, color: Colors.black),
                                  Text(' Изменить', style: GoogleFonts.sourceSans3(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ))
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  backgroundColor: Color(0xFFB66DFF)
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.exit_to_app, color: Colors.black),
                                  Text('  Выйти', style: GoogleFonts.sourceSans3(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ))
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        style: GoogleFonts.sourceSans3(fontSize: 16),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Поиск..',
                          hintStyle: GoogleFonts.sourceSans3(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF8A19D6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.filter_alt_rounded, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 155,
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  decoration: BoxDecoration(
                      color: Color(0xFFB66DFF),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Управляй', style: GoogleFonts.sourceSans3(
                                color: Colors.white,
                                fontSize: 16
                            )),
                            Text('Наличием', style: GoogleFonts.sourceSans3(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                            )),
                            SizedBox(height: 10),
                            Container(
                                height: 45,
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    backgroundColor: Color(0xFF8A19D6),
                                  ),
                                  child: Text('Начать', style: GoogleFonts.sourceSans3(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )),
                                )
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/images/food.png')
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  child: Text('Статистика', style: GoogleFonts.sourceSans3(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  )),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFF8A19D6),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset('assets/images/bar_chart.png'),
                          SizedBox(height: 10),
                          Text('920', style: GoogleFonts.sourceSans3(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          )),
                          Text('Продуктов', style: GoogleFonts.sourceSans3(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ))
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFF8A19D6),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset('assets/images/graph.png'),
                          SizedBox(height: 10),
                          Text('52', style: GoogleFonts.sourceSans3(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          )),
                          Text('Продано', style: GoogleFonts.sourceSans3(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ))
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFF8A19D6),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset('assets/images/bar_chart2.png'),
                          SizedBox(height: 10),
                          Text('R\$ 9mil', style: GoogleFonts.sourceSans3(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          )),
                          Text('Прибыль', style: GoogleFonts.sourceSans3(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 45),
                Row(
                  children: [
                    Text('    Последние заказы', style: GoogleFonts.sourceSans3(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    )),
                    Spacer(),
                    Text('Больше     ', style: GoogleFonts.sourceSans3(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    )),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color(0xFF8A19D6),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset('assets/images/icon2.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ciclano', style: GoogleFonts.sourceSans3(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            )),
                            Text('Комментарий: ...', style: GoogleFonts.sourceSans3(
                                color: Color(0xFF8CA1A9)
                            ))
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text('1ч', style: GoogleFonts.sourceSans3(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 80,
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset('assets/images/icon3.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Beltrano', style: GoogleFonts.sourceSans3(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            )),
                            Text('Комментарий: ...', style: GoogleFonts.sourceSans3(
                                color: Color(0xFF8CA1A9)
                            ))
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text('4ч', style: GoogleFonts.sourceSans3(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                        )),
                      )
                    ],
                  ),
                ),
              ]
          ),
        ),
      )
          : Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF8A19D6),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Дом',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows),
            label: 'Склад',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
