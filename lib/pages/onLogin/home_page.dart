import 'package:flutter/material.dart';
import 'package:gajahmungkur/pages/onLogin/chat_page.dart';
import 'package:gajahmungkur/pages/onLogin/home_page_main.dart';
import 'package:gajahmungkur/pages/onLogin/profile_page.dart';
import 'package:gajahmungkur/pages/onLogin/transaction_page.dart';
import 'package:gajahmungkur/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customNavbar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
        child: BottomAppBar(
          child: BottomNavigationBar(
            backgroundColor: abu,
            currentIndex: currentindex,
            onTap: (value) {
              print(value);
              setState(() {
                currentindex = value;
              });
            },
            // type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 22,
                      color: currentindex == 0 ? orange : secondarybackground,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 22,
                      color: currentindex == 1 ? orange : secondarybackground,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Image.asset(
                      'assets/icon_riwayattransaksi.png',
                      width: 22,
                      color: currentindex == 2 ? orange : secondarybackground,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Image.asset(
                      'assets/icon_profile_navbar.png',
                      width: 22,
                      color: currentindex == 3 ? orange : secondarybackground,
                    ),
                  ),
                  label: ''),
            ],
          ),
        ),
      );
    }

    Widget page() {
      switch (currentindex) {
        case 0:
          {
            return HomePageMain();
            break;
          }
        case 1:
          {
            return ChatPage();
            break;
          }
        case 2:
          {
            return TransactionPage();
            break;
          }
        case 3:
          {
            return ProfilePage();
            break;
          }
        default:
          {
            return HomePageMain();
          }
      }
    }

    return Scaffold(
      backgroundColor: abu,
      bottomNavigationBar: customNavbar(),
      body: page()
    );
  }
}
