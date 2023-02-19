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
      title: 'Flutter List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listData = ["data", 4, 5, 2, 3, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter List"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                itemCount: listData.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (_, int index) {
                  return Container(
                    margin: EdgeInsets.all(15),
                    color: Colors.blueAccent,
                    child: Center(
                        child: Text(
                      listData[index].toString(),
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )),
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  changeList("data2");
                },
                child: Text('change list')),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  changeList(String index) {
    setState(() {
      // listData.add(value);
      // listData.removeAt(index);
      // listData.remove(index);
      // listData.sort();
      listData.shuffle();
    });
    // var condition;
    // condition = listData.contains(index);
    // print(condition);
    // var condition;
    // condition = listData.iterator.moveNext();
    // print(condition);
  }
}
