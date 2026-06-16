import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Hive Open Box"),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(onPressed: () {}, child: Text("Hive Open Box")),
        ],
      ),
    );
  }
}
