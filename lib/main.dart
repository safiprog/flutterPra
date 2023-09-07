import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safi_day1/pages/home_page.dart';
import 'package:safi_day1/pages/login_page.dart';
void main(){
  runApp(const MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       darkTheme: ThemeData.dark(), 
       themeMode: ThemeMode.system,
       theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily
       ),
       initialRoute: "/login",
       routes: {
        "/": (context) => const HomePage(),
        "/login":(context) => const LoginPage()
       },
 
    );
  }
}