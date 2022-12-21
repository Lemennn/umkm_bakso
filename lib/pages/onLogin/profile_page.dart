import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        toolbarHeight: 70,
        backgroundColor: orange,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Profil Pengguna',
          style: whitetextstyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        centerTitle: true,
      );
    }

    Widget body() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultmargin),
        padding: EdgeInsets.symmetric(
          horizontal: defaultmargin,
          vertical: defaultmargin,
        ),
        decoration: BoxDecoration(
          color: primarybackground,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/profile.png',
              width: 75,
              height: 75,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mas Pamungkas12313 123123123123121231',
                    style: blacktextstyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This is Username',
                    style: blacktextstyle.copyWith(
                        fontWeight: medium, fontSize: 14),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget option() {
      return Container(
        decoration: BoxDecoration(
          color: primarybackground,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(
            horizontal: defaultmargin, vertical: defaultmargin),
        padding: EdgeInsets.symmetric(
          horizontal: defaultmargin,
          vertical: defaultmargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Akun',
              style: blacktextstyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/edit-profile');
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit Profile',
                      style: blacktextstyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                    Image.asset(
                      'assets/icon_arrow.png',
                      width: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaksi Anda',
                    style: blacktextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Image.asset(
                    'assets/icon_arrow.png',
                    width: 8,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bantuan',
                    style: blacktextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Image.asset(
                    'assets/icon_arrow.png',
                    width: 8,
                  )
                ],
              ),
            ),
            SizedBox(
              height: defaultmargin,
            ),
            Text(
              'Umum',
              style: blacktextstyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Masukan',
                    style: blacktextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Image.asset(
                    'assets/icon_arrow.png',
                    width: 8,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: abu,
        appBar: header(),
        body: ListView(
          children: [body(), option()],
        ),
      ),
    );
  }
}
