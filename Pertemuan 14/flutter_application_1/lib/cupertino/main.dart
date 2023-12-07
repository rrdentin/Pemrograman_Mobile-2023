import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content
          children: [
            Image.asset(
              'assets/dainty.png', // Replace with your image asset path
              height: 40, // Adjust the height as needed
            ),
            const SizedBox(width: 4),
            const Text('Rr. Denti N | 2141720250'),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: const Text("Delete Item?"),
                    content: const Text("Are you sure?"),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Yes"),
                      ),
                      TextButton(onPressed: () {}, child: const Text("No"))
                    ],
                  );
                });
          },
          child: const Text("Delete"),
        ),
      ),
    );
  }
}