import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_date_hive_flutter/features/models/hive_adapter.dart';
import 'package:local_date_hive_flutter/features/views/my_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MyHomePage(),
    );
  }
}
