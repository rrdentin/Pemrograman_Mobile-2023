import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {                
    AssetImage dainty = AssetImage('assets/dainty.png');

    return MaterialApp(
      title: 'Rr. Denti Nurramadhona_2141720250',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
          body: Container(
              padding: const EdgeInsets.all(20),
              //margin: const EdgeInsets.all(20),
              color: Colors.black,
              child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.purpleAccent,
                        alignment: Alignment.center,
                        child: Text(
                            'Ungu Terang',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.purple,
                        alignment: Alignment.center,
                        child: Text(
                            'Ungu',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            
              Expanded(
                child: Row(
                children: [
                  Expanded(
                      child: Container(
                        width: 200,
                        height: double.infinity,
                        color: Colors.deepPurpleAccent,
                        alignment: Alignment.center,
                        child: Text(
                            'Ungu Gelap Terang',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                ]
                )
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: double.infinity,
                        color: Colors.deepPurple,
                        alignment: Alignment.center,
                        child: Text(
                            'Ungu Gelap Terang',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ),
      ])
    )));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
