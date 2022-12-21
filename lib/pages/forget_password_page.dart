import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultmargin, vertical: defaultmargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/asset_developing.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Maaf, fitur ini sedang tahap development',
              style: blacktextstyle.copyWith(fontSize: 16, fontWeight: medium),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Terima kasih sudah menggunakan layanan kami',
                  style: primarytextstyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 12,
                      color: orange,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/first-page');
                      },
                      child: Text(
                        'Kembali ke page home',
                        style: orangetextstyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
