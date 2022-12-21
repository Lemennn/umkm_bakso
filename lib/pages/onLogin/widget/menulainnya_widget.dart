import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';

class AnotherMenu extends StatelessWidget {
  final String param;
  AnotherMenu(this.param);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: defaultmargin,
        right: defaultmargin,
      ),
      decoration: BoxDecoration(
          color: primarybackground, borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                param,
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Katergori Barang',
                style: primarytextstyle.copyWith(
                    fontSize: 12, fontWeight: semibold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Nama Product',
                style: primarytextstyle.copyWith(
                    fontSize: 16, fontWeight: semibold),
                overflow: TextOverflow.clip,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Harga Barang',
                style: orangetextstyle.copyWith(fontSize: 14, fontWeight: bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
