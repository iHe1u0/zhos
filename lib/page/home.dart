// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:os/component/empty.dart';
import 'package:os/config/server.dart';
import 'package:os/model/topic/latest.dart';
import 'package:os/utils/network_utils.dart';
import 'package:os/utils/time_utils.dart';

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
  late Future<LatestTopic?> _future;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "操作系统论坛",
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: FutureBuilder(
          future: _future,
          builder: (BuildContext context, AsyncSnapshot snapShot) {
            switch (snapShot.connectionState) {
              case ConnectionState.waiting:
                return EmptyView(msg: "正在加载...");
              case ConnectionState.done:
                if (snapShot.hasError) {
                  return EmptyView(msg: snapShot.error.toString());
                }
                return _homeContentView(context, snapShot);
              default:
                return EmptyView(msg: "未知错误");
            }
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void initState() {
    _future = _getList();
    super.initState();
  }

  Future<LatestTopic?> _getList() async {
    NetworkUtils networkUtils = NetworkUtils.instance;
    var response = await networkUtils.get(ServerConfig.latestTopic);
    if (response.statusCode == 200) {
      return LatestTopic.fromJson(response.data);
    }
    return null;
  }

  Widget _homeContentView(BuildContext context, AsyncSnapshot snapShot) {
    debugPrint("start get latest list");
    if (!snapShot.hasData) {
      return EmptyView();
    }
    var latestTopic = snapShot.data as LatestTopic;
    var topics = latestTopic.topicList?.topics;
    if (null == topics) {
      return Text("NULL");
    }
    var size = topics.length;
    return ListView.separated(
      itemCount: size,
      separatorBuilder: (_, __) => Divider(
        height: 0.8,
        color: Colors.blue,
      ),
      itemBuilder: (context, index) {
        var topic = topics[index];
        var imageUrl = topic.imageUrl ?? ServerConfig.defaultIcon;
        return ListTile(
          leading: Image.network(
            imageUrl,
            width: 100,
            height: 100,
          ),
          title: Text(
            topic.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            TimeUtils.formatUTCTime(topic.createdAt),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          onTap: () {},
        );
      },
    );
  }
}
