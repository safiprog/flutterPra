import"package:flutter/material.dart";

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safi hamza"),
      ),
      body: Center(
        child: Container(
          child: Text("safi welcome to the ascend international ascend "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}