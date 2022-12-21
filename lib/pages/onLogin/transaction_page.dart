import 'package:flutter/material.dart';
import 'package:gajahmungkur/pages/onLogin/home_page.dart';
import 'package:gajahmungkur/theme.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  final isEmpty = false;
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        toolbarHeight: 70,
        backgroundColor: orange,
        title: Text(
          'Riwayat Transaksi',
          style: whitetextstyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget noEmptyBody() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detail-transaction');
        },
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: borderColor,
                blurRadius: 10.0,
                spreadRadius: 2.0
              )
            ],
            color: primarybackground,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: secondarytextcolor,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Belanja',
                              style: blacktextstyle.copyWith(
                                fontSize: 8,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              '01/02/20022',
                              style: blacktextstyle.copyWith(
                                fontSize: 8,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultmargin, vertical: 10),
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'pending',
                      style: whitetextstyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: secondarytextcolor,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/example_product.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bakso Telur',
                        style: blacktextstyle.copyWith(
                          fontSize: 14,
                          fontWeight: semibold,
                        ),
                      ),
                      Text(
                        '4 butir',
                        style: blacktextstyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Belanja',
                          style: blacktextstyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Rp. 2000000',
                          style: orangetextstyle.copyWith(
                              fontSize: 12, fontWeight: semibold),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget emptyBody() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_transaction_empty.png',
                height: 200,
                width: 200,
              ),
              Text(
                'OOps',
                style: orangetextstyle.copyWith(
                  fontSize: 25,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Anda tidak memiliki riwayat transaksi',
                style: blacktextstyle.copyWith(fontSize: 12, fontWeight: light),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultmargin, vertical: 10),
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Telusuri',
                    style: whitetextstyle.copyWith(
                        fontSize: 15, fontWeight: semibold),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: Container(
        color: abu,
        child: isEmpty
            ? Column(
                children: [emptyBody()],
              )
            : ListView(
                children: [
                  noEmptyBody(),
                ],
              ),
      ),
    );
  }
}
