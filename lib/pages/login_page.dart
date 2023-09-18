import 'package:flutter/material.dart';
import 'package:safi_day1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButten = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginimage.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                  fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        hintText: "Enter UserName", label: Text("User Name")),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", label: Text("Password")),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButten = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButten ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButten?Icon(Icons.done,color: Colors.white,):Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(changeButten?50:10)),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(foregroundColor: Colors.white
                  //   ,minimumSize:const  Size(120, 40)),
                  //   onPressed: () {
                  //    Navigator.pushNamed(context, MyRoutes.homeRoute);

                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
