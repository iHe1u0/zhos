// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:os/const/server.dart';
import 'package:os/data/latest_topic_item.dart';
import 'package:os/utils/network_utils.dart';

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
  List<String> items = List<String>.generate(3, (i) => '$i');
  // Real data for home_page

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "操作系统论坛",
      home: Scaffold(
        appBar: AppBar(),
        body: Scaffold(
          body: ListView.builder(
            itemCount: 0,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xff764abc),
                  child: Image.network(
                      'https://zhos.net/uploads/default/original/1X/0248e539779413624e75ce3f2584a620f7754f04.png'),
                ),
                title: Text('Item ${items[index]}'),
                subtitle: Text("urls[index].title"),
                trailing: Icon(Icons.more_vert),
                onTap: () {
                },
              );
            },
          ).build(context),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              onPressed();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  void onPressed() async {
    debugPrint("add new post");

    NetworkUtils networkUtils = NetworkUtils.instance!;
    var response = await networkUtils.get(ServerConfig.home);
    if (response.statusCode == 200) {
      var string = response.data.toString();
      var data = jsonDecode(string);
      
      LatestTopicItem list = LatestTopicItem.fromJson(data);

      debugPrint("${list['primary_groups']}");
    } else {
      debugPrint("error: ${response.statusCode}");
    }
  }
}
