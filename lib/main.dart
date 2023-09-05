import 'package:flutter/material.dart';
import 'package:safi_day1/home_page.dart';
void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home_page()
    );
  }
}