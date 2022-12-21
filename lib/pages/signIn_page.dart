import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget kaki() {
      return Container(
        color: primarybackground,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              thickness: 1,
            ),
            Text(
              'Tidak memiliki akun ?',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Daftar',
                style: orangetextstyle.copyWith(
                    fontSize: 12,
                    fontWeight: semibold,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      );
    }

    Widget header() {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          margin:
              EdgeInsets.only(top: defaultmargin * 2, bottom: defaultmargin),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Masuk',
                style: whitetextstyle.copyWith(fontSize: 25, fontWeight: bold),
              ),
            ],
          ),
        ),
      );
    }

    Widget isi() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultmargin,
          left: defaultmargin,
          right: defaultmargin,
        ),
        decoration: BoxDecoration(
          color: primarybackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Welcome Back',
                style: orangetextstyle.copyWith(
                  fontSize: 23,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                'Halo, masuk untuk melanjutkan',
                style:
                    primarytextstyle.copyWith(fontSize: 12, fontWeight: bold),
              ),
            ),
            SizedBox(
              height: defaultmargin,
            ),
            Container(
              child: Center(
                child: Image.asset(
                  'assets/splash.png',
                  width: 200,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: abu, borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_profile.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan email anda',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: abu, borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_key.png',
                    height: 20,
                    width: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan password',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/forgetpassword');
                  },
                  child: Text(
                    'Lupa password ?',
                    style: orangetextstyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/homepage', (route) => false);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2.0,
                      blurRadius: 0.5,
                      offset: Offset(3, 3),
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [orange, red],
                  ),
                ),
                child: Text(
                  'Masuk',
                  style: whitetextstyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            kaki()
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
      color: orange,
      child: ListView(
        children: [
          header(),
          isi(),
        ],
      ),
    ));
  }
}
