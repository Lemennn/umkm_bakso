import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gajahmungkur/pages/onLogin/widget/menulainnya_widget.dart';
import 'package:gajahmungkur/theme.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  final List<String> data = [
    'assets/example_product.png',
    'assets/example_product.png',
    'assets/example_product.png',
    'assets/example_product.png',
    'assets/example_product.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget insideHead() {
      return Container(
        height: 75,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo',
                    style: whitetextstyle.copyWith(
                      fontSize: 18,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Yth. Pamungkas',
                    style: whitetextstyle.copyWith(
                        fontSize: 15, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/icon_tas.png', width: 25),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage('assets/profile.png'),
                    width: 54,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        padding:
            EdgeInsets.only(left: defaultmargin, right: defaultmargin, top: 4),
        height: 55,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          color: primarybackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Apa yang anda inginkan ...",
              hintStyle:
                  primarytextstyle.copyWith(fontSize: 14, fontWeight: regular),
              border: InputBorder.none),
        ),
      );
    }

    Widget head() {
      return Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              padding: EdgeInsets.symmetric(
                  horizontal: defaultmargin, vertical: defaultmargin),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(24)),
                color: orange,
              ),
              child: insideHead(),
            ),
            Positioned(
              right: defaultmargin,
              top: 110,
              child: search(),
            )
          ],
        ),
      );
    }

    Widget anotherProduct() {
      return Container(
        child: Column(children: data.map((e) => AnotherMenu(e)).toList(),),
      );
    }

    Widget body() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 50, bottom: 20, left: defaultmargin, right: defaultmargin),
            child: Center(
              child: Text(
                'Pilihan Paket',
                style:
                    blacktextstyle.copyWith(fontSize: 16, fontWeight: semibold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          CarouselSlider(
            items: data
                .map(
                  (e) => ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      children: [
                        Image.asset(
                          e,
                          fit: BoxFit.cover,
                          width: 500,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Paket... gram',
                                  style: blacktextstyle.copyWith(
                                      fontWeight: regular, fontSize: 16),
                                ),
                                Text(
                                  'Rp. 10000',
                                  style: orangetextstyle.copyWith(
                                      fontWeight: semibold, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              // aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(height: defaultmargin),
          Container(
              margin: EdgeInsets.symmetric(horizontal: defaultmargin),
              child: Text(
                'Menu Lainnya',
                style:
                    blacktextstyle.copyWith(fontSize: 20, fontWeight: medium),
              ))
        ],
      );
    }

    return Scaffold(
      backgroundColor: abu,
      body: ListView(
        children: [head(), body(), anotherProduct()],
      ),
    );
  }
}
