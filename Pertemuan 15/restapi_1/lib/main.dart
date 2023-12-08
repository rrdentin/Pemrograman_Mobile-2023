import 'package:flutter/material.dart';
import 'package:restapi_1/identitas/repository.dart';
import 'package:restapi_1/model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Tutorial/Rr. Denti Nurramadhona',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'API https://reqres.in/api/unknown'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int blogCount;
  late List listBlog;
  Repository repository = Repository();

  Future getData() async {
    listBlog = [];
    listBlog = await repository.getData();
    setState(() {
      blogCount = listBlog.length;
      listBlog = listBlog;
    });
  }

  @override
  void initState() {
    //print ('mulai');
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
                "${listBlog[index].id} - ${listBlog[index].name} - ${listBlog[index].year} - ${listBlog[index].color}  - ${listBlog[index].pantone_value}");
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: listBlog.length),
    );
  }
}