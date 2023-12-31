import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/loginimage.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome to Ascend ",
            style: TextStyle(
                fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Enter UserName", label: Text("User Name")),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", label: Text("Password")),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {
                   print("funcation called successfully");
                   

                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
