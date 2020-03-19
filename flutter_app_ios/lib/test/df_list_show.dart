import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/df_list_github.dart';

void main() {
  runApp(Show());
}

class Show extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return ShowState();
  }
}

class ShowState extends State<Show> {
  List list = new List(); //列表要展示的数据
  int get count => list.length;

  void load() {
    print("load");
    setState(() {
      list.addAll(List.generate(15, (v) => v));
      print("data count = ${list.length}");
    });
  }

  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    load();
    return true;
  }

  Future<bool> _loadMoreTest() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    //load();
    setState(() {});
    return true;
  }

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    list.clear();
    load();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('DFList测试'),
          ),
          body: getMoreWidget()),
    );
  }

  Widget getTestWidget() {
    return Container(
        child: RefreshIndicator(
      child: DFList(
        isFinish: count >= 60,
        onLoadMore: _loadMore,
        child: ListView(
          children: <Widget>[
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
            Text("11111"),
          ],
        ),
        whenEmptyLoad: false,
        delegate: DefaultLoadMoreDelegate(),
        textBuilder: DefaultLoadMoreTextBuilder.chinese,
        finishedText: '加载结束了',
        errorText: "加载失败，点击重试一下",
      ),
      onRefresh: _refresh,
    ));
  }

  Widget getMoreWidget() {
    return Container(
        child: RefreshIndicator(
      child: DFList(
        isFinish: count >= 60,
        onLoadMore: _loadMore,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('$index'),
            );
          },
          itemCount: count,
        ),
        whenEmptyLoad: false,
        delegate: DefaultLoadMoreDelegate(),
        textBuilder: DefaultLoadMoreTextBuilder.chinese,
        finishedText: '加载结束了',
        errorText: "加载失败，点击重试一下",
      ),
      onRefresh: _refresh,
    ));
  }
}
