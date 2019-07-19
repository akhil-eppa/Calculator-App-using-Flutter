import 'package:flutter/material.dart';
import 'home_page.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(brightness: Brightness.light)
      ),
      home: new HomePage(),
    );
  }
}