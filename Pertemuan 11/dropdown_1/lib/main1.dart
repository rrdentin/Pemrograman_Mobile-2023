import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rr. Denti Nurramadhona_2141720250',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedValue = 'Reamur';
  double inputValue = 0.0;
  String resultText = '';
  
  AssetImage dainty = AssetImage('assets/dainty.png');
  @override
  Widget build(BuildContext context) {
    
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
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Celcius (0.0)',
                hintText: 'Masukkan Angka Temperatur dalam celcius',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (value) {
                setState(() {
                  inputValue = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            DropdownButton(
              isExpanded: true,
              value: selectedValue,
              items: [
                DropdownMenuItem(
                  value: 'Reamur',
                  child: Text('Reamur'),
                ),
                DropdownMenuItem(
                  value: 'Kelvin',
                  child: Text('Kelvin'),
                ),
                DropdownMenuItem(
                  value: 'Fahrenheit',
                  child: Text('Fahrenheit'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            Text('Hasil'),
            Text(resultText),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Convert the temperature to the selected scale.
                      final convertedTemperature = _convertCelsiusTo(inputValue, selectedValue);

                      // Update the resultText variable with the converted temperature.
                      setState(() {
                        resultText = convertedTemperature;
                      });
                    },
                    child: Text('Konversi Suhu'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _convertCelsiusTo(double inputValue, String scale) {
    double convertedTemperature = inputValue;

    switch (scale) {
      case 'Reamur':
        convertedTemperature = inputValue * 4 / 5;
        break;
      case 'Kelvin':
        convertedTemperature = inputValue + 273.15;
        break;
      case 'Fahrenheit':
        convertedTemperature = inputValue * 9 / 5 + 32;
        break;
    }

    return convertedTemperature.toStringAsFixed(2);
  }
}