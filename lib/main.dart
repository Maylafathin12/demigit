import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyApp());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageStae();
}

class _HomePageStae extends State<HomePage> {
  var hitungan = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mantan ku")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          hitungan++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "$hitungan",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
