import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_date_hive_flutter/core/constant/caching_keys.dart';
import 'package:local_date_hive_flutter/features/models/person.dart';

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
              child: Text("Hive Box Open"),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Person person = Person(
                name: "mina",
                age: 25,
                friends: [
                  Person(name: "ali", age: 26, friends: [], salary: 4000),
                ],
                salary: 5000,
              );
              box.put(CachingKeys.cachingperson, person);
            },
            child: Text("Hive Open"),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Person? p = box.get(CachingKeys.cachingperson);
              print(p?.friends.first.name);
            },
            child: Text("retrive data"),
          ),
        ],
      ),
    );
  }
}
