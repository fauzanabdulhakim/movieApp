import 'package:bookingnonton/login_view.dart';
import 'package:bookingnonton/registration_view.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/registration': (context) => RegistrationView(),
        '/home': (context) => HomeView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
