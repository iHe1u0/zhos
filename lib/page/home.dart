// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(1000, (i) => '$i');
    var listView = ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xff764abc),
            child: Text(items[index]),
          ),
          title: Text('Item ${items[index]}'),
          subtitle: Text('Item description'),
          trailing: Icon(Icons.more_vert),
          onTap: () {
            debugPrint(items[index]);
          },
        );
      },
    ).build(context);
    return MaterialApp(
      title: "操作系统论坛",
      home: Scaffold(
        appBar: AppBar(),
        body: Scaffold(
          body: listView,
          floatingActionButton: FloatingActionButton(
            onPressed: onPressed,
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
