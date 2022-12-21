import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget picture() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: defaultmargin,
          right: defaultmargin,
        ),
        child: Image.asset(
          'assets/profile.png',
          width: 100,
          height: 100,
        ),
      );
    }

    Widget form() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultmargin,
          right: defaultmargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: defaultmargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Lengkap',
                    style: primarytextstyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 7,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_profile.png',
                          width: 37,
                          height: 37,
                          color: primarytextcolor,
                        ),
                        SizedBox(
                          width: 17,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultmargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Singkat',
                    style: primarytextstyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 7,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_username.png',
                          width: 37,
                          height: 37,
                          color: primarytextcolor,
                        ),
                        SizedBox(
                          width: 17,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultmargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat Email',
                    style: primarytextstyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 7,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_at.png',
                          width: 37,
                          height: 37,
                          color: primarytextcolor,
                        ),
                        SizedBox(
                          width: 17,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultmargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kata Sandi',
                    style: primarytextstyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 7,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_key.png',
                          width: 37,
                          height: 37,
                          color: primarytextcolor,
                        ),
                        SizedBox(
                          width: 17,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultmargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nomor Telepon',
                    style: primarytextstyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 7,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_phone.png',
                          width: 37,
                          height: 37,
                          color: primarytextcolor,
                        ),
                        SizedBox(
                          width: 17,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: abu,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () => {
              Navigator.pop(context)
            },
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.check,
                size: 20,
              ),
            ),
          ),
        ],
        backgroundColor: orange,
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          'Edit Profil',
          style: whitetextstyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          picture(),
          form(),
        ],
      ),
    );
  }
}
