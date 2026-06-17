import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_date_hive_flutter/core/constant/caching_keys.dart';

class MyHomePage extends StatelessWidget {
  late Box box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                box = await Hive.openBox(CachingKeys.userBox);
              },
              child: Text("Hive Open Box"),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              box.put(CachingKeys.cachingString, "testString");
            },
            child: Text("Hive Open Box"),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              String myString = box.get(CachingKeys.cachingString);
              print(myString);
            },
            child: Text("retrive data"),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              box.put(CachingKeys.cachingString, "udate String");
            },
            child: Text("update data"),
          ),
        ],
      ),
    );
  }
}
