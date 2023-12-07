import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/mahasiswa.dart';
import 'package:flutter_application_1/servis/mahasiswaServis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rest API",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future data;
  List<Mahsiswa> data2 = [];

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
        body: data2.length == 0
            ? const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              )
            : ListView.builder(
                itemCount: data2.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data2[index].toString()),
                  );
                }));
  }
}
