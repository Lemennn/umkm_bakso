import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget page() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultmargin, vertical: defaultmargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Buat akun baru',
                style: blacktextstyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Temukan apa yang anda inginkan !',
                style: blacktextstyle.copyWith(
                  fontSize: 26,
                  fontWeight: semibold,
                ),
              ),
              Image(
                image: AssetImage('assets/jaabalanja.png'),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap:() {
                  Navigator.pushNamed(context, '/register');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            orange,
                            red,
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2.0,
                            blurRadius: 0.5,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DAFTAR',
                              style: whitetextstyle.copyWith(
                                  fontSize: 16, fontWeight: bold, letterSpacing: 1.5),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultmargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah memiliki akun ?',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'log-in',
                style: orangetextstyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: primarybackground,
        body: ListView(
          children: [
            page(),
            footer()
          ],
        ),
      ),
    );
  }
}
