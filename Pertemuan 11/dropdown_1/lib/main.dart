import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rr. Denti Nurramadhona_2141720250',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> data = [
    "Rr",
    "Denti",
    "anton",
    "setiawan",
    "jodi",
  ];

  @override
  Widget build(BuildContext context) {
    AssetImage dainty = AssetImage('assets/dainty.png');

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image(
              image: dainty,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
            Text('Rr. Denti Nurramadhona_2141720250'),
          ],
        ),
      ),
      body: Center(
        child: DropdownButton(
            hint: Text("Pilih..."),
            onChanged: (value) {
              print(value);
            },
            items: data
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList()),
      ),
    );
  }
}
