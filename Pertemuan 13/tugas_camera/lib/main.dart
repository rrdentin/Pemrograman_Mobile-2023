import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? imageFile;

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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Image Viewer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            if (imageFile != null)
              Container(
                width: 640,
                height: 450,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                    image: FileImage(imageFile!),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 8, color: Colors.black),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            else
              Container(
                width: 640,
                height: 450,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(width: 8, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 80, // Adjust the size as needed
                      color: Colors.white, // Adjust the color as needed
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Image Will Appear Here',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                  ],
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => getImage(source: ImageSource.camera),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.camera),
                        const Text('Capture Image',
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => getImage(source: ImageSource.gallery),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.photo),
                        const SizedBox(width: 2),
                        const Text('Select Image',
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => resetImage(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.refresh),
                  //const SizedBox(width: 2),
                  const Text('Reset', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
      maxWidth: 640,
      maxHeight: 480,
      imageQuality: 70, //0 - 100
    );

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }

  void resetImage() {
    setState(() {
      imageFile = null;
    });
  }
}
