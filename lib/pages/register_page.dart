import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget head() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        height: 120,
        child: Container(
          padding: EdgeInsets.only(
            left: defaultmargin,
            top: 20,
            bottom: 10,
          ),
          width: 50,
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 160),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                orange,
                primarybackground,
              ],
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                child: Text('Daftar'),
                style: whitetextstyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              SizedBox(
                height: 5,
              ),
              DefaultTextStyle(
                child: Text('Lengkapi data diri anda'),
                style: whitetextstyle.copyWith(fontSize: 12, fontWeight: semibold),
              ),
            ],
          ),
        ),
      );
    }

    Widget fullname() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultmargin, right: defaultmargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Lengkap',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 7,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_profile.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nama Lengkap',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget username() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultmargin, right: defaultmargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Singkat',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 7,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_profile.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nama Singkat',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget sandi() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultmargin, right: defaultmargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kata Sandi',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 7,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_key.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Kata Sandi',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget email() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultmargin, right: defaultmargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat Email',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 7,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_at.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Alamat Email',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget telepon() {
      return Container(
        margin:
            EdgeInsets.only(top: 20, left: defaultmargin, right: defaultmargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nomor Telepon',
              style: primarytextstyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 7,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_phone.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nomor Telepon',
                        hintStyle: primarytextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buttondaftar() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [orange, red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.only(
            top: 20,
            left: defaultmargin,
            right: defaultmargin,
          ),
          child: Center(
            child: Text(
              'Daftar',
              style: whitetextstyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah memiliki akun ?',
              style:
                  primarytextstyle.copyWith(fontSize: 12, fontWeight: regular),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Masuk',
                style:
                    orangetextstyle.copyWith(fontSize: 12, fontWeight: regular),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primarybackground,
      body: ListView(
        children: [
          head(),
          fullname(),
          username(),
          email(),
          sandi(),
          telepon(),
          buttondaftar(),
          footer(),
        ],
      ),
    );
  }
}
