import 'package:flutter/material.dart';
import 'package:flutter_house_rent/screen/home/home_screen.dart';
import 'package:flutter_house_rent/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: backgroundColor,
        primaryColor: backgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: accentColor,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(color: headline1Color),
          bodyText1: TextStyle(color: bodyText1Color),
        ),
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
