import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky_project/MainPage.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
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
            child: Stack(
              clipBehavior: .none,
              children: [
                Container(
                  padding: .only(left: 35, right: 35, top: 35),
                  height: MediaQuery.of(context).size.height * 0.73,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .circular(40),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      SizedBox(height: 60,),
                      Text('Информация', style: GoogleFonts.sourceSans3(fontWeight: .w700, fontSize: 20),),
                      SizedBox(height: 17,),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Имя',
                                      value: 'Fulano',
                                    ),
                                  ),
                                  SizedBox(width: 18),
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Фамилия',
                                      value: 'Fulano',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              ProfileTextField(
                                label: 'E-mail',
                                value: 'fulano@email.com',
                              ),
                              SizedBox(height: 10,),
                              ProfileTextField(
                                label: 'Пароль',
                                value: '*****',
                                obscure: true,
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Дата рождения',
                                      value: '02.02.2002',
                                    ),
                                  ),
                                  SizedBox(width: 18),
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Телефон',
                                      value: '6767-6767',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Должность',
                                      value: 'Владелец',
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Зарплата',
                                      value: 'R\$ 5.000',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Город',
                                      value: 'Denver',
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Штат',
                                      value: 'Colorado',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Почтовый индекс',
                                      value: '80206',
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: ProfileTextField(
                                      label: 'Адрес',
                                      value: '1001, Pinecrest Avenue',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -60,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: .circle,
                            image: DecorationImage(
                              image: AssetImage('assets/avatar.png'),
                              fit: .cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Material(
                            color: Colors.transparent,
                            shape: CircleBorder(),
                            child: InkWell(
                              onTap: () {
                                print('Hello World!');
                              },
                              customBorder: CircleBorder(),
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xff8A19D6),
                                  shape: .circle,
                                  border: .all(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                child: Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: .symmetric(horizontal: 30, vertical: 50),
            child: IconButton.filled(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));},
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              style: IconButton.styleFrom(
                foregroundColor: Color(0xffFFFFFF),
                backgroundColor: Color(0xff8A19D6),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xffFFFFFF),
        padding: .only(left: 35, right: 35, bottom: 20, top: 10),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Отменить',
                  style: GoogleFonts.sourceSans3(
                    color: Color(0xff8A19D6),
                    fontWeight: .w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  showSuccessDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff8A19D6),
                  foregroundColor: Color(0xffFFFFFF),
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(30),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Сохранить',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class ProfileTextField extends StatelessWidget {
  final String label;
  final String value;
  final bool obscure;

  const ProfileTextField({
    super.key,
    required this.label,
    required this.value,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        border: .all(color: Color(0xff9E9E9E)),
        borderRadius: .circular(14),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xff9E9E9E),
            ),
          ),
          SizedBox(height: 6),
      TextField(
        obscureText: obscure,
        controller: TextEditingController(text: value),
        style: TextStyle(
          fontSize: 16,
          fontWeight: .w600,
        ),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: .zero,
          border: .none,
        ),
      ),
        ],
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: .circular(30.0),
        ),
        child: Padding(
          padding: .all(20.0),
          child: Column(
            mainAxisSize: .min,
            children: [
              Align(
                alignment: .topRight,
                child: IconButton(
                  icon: Icon(Icons.close, color: Color(0xff9E9E9E)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xff8A19D6),
                  shape: .circle,
                ),
                child: Icon(Icons.check, color: Color(0xffFFFFFF), size: 50),
              ),
              SizedBox(height: 20),
              Text(
                "Профиль изменён!",
                style: GoogleFonts.sourceSans3(fontSize: 22, fontWeight: .bold),
              ),
              SizedBox(height: 10),
              Text(
                "Изменения сохранены",
                style: GoogleFonts.sourceSans3(fontSize: 16, color: Color(0xff9E9E9E)),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage())),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8A19D6),
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(25),
                    ),
                  ),
                  child: Text(
                    "Продолжить",
                    style: GoogleFonts.inter(color: Color(0xffFFFFFF), fontSize: 18, fontWeight: .w800),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}