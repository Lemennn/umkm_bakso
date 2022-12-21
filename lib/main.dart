import 'package:flutter/material.dart';
import 'package:gajahmungkur/pages/first_page.dart';
import 'package:gajahmungkur/pages/forget_password_page.dart';
import 'package:gajahmungkur/pages/onLogin/detail_transaction_page.dart';
import 'package:gajahmungkur/pages/onLogin/editprofile_page.dart';
import 'package:gajahmungkur/pages/onLogin/home_page.dart';
import 'package:gajahmungkur/pages/register_page.dart';
import 'package:gajahmungkur/pages/signIn_page.dart';
import 'package:gajahmungkur/pages/splash_page.dart';
import 'theme.dart';


void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/' : (context) => Splashpage(),
        '/first-page' : (context) =>  Firstpage(),
        '/sign-in' :(context) => SingInPage(),
        '/register' :(context) => RegisterPage(),
        '/forgetpassword' :(context) => ForgetPasswordPage(),
        '/homepage' :(context) => HomePage(),
        '/edit-profile' :(context) => EditProfilePage(),
        '/detail-transaction' :(context) => DetailTransactionPage()
      },  
    );
  }

}