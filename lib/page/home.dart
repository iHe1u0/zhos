// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:os/data/item_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ZHOS",
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
  // fake data >.<
  final List<String> items = List<String>.generate(3, (i) => '$i');
  final List<ItemData> urls = [];

  @override
  Widget build(BuildContext context) {
    for (var element in items) {
      urls.add(ItemData("title_$element", element));
    }
    return MaterialApp(
      title: "操作系统论坛",
      home: Scaffold(
        appBar: AppBar(),
        body: Scaffold(
          body: ListView.builder(
            itemCount: urls.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xff764abc),
                  child: Image.network(
                      'https://zhos.net/uploads/default/original/1X/0248e539779413624e75ce3f2584a620f7754f04.png'),
                ),
                title: Text('Item ${items[index]}'),
                subtitle: Text(urls[index].title),
                trailing: Icon(Icons.more_vert),
                onTap: () {
                  debugPrint(urls[index].url);
                },
              );
            },
          ).build(context),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              urls.add(ItemData("title", "url"));
              onPressed();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    debugPrint("add new post");
  }
}
