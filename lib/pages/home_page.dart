import"package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Safi hamza"),
      ),
      body: Center(
        child: Container(
          child:  const Text("safi welcome to the ascend international ascend "),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}