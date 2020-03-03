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
  int _page = 1; //加载的页数
  bool isLoading = false; //是否正在加载数据
  bool isFinished = false; //是否加载完毕
  ScrollController _scrollController = ScrollController(); //listview的控制器


  int get count => list.length;

  List<int> listt = [];


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
        body:Container(

          child:RefreshIndicator(
            child:DFList(
              isFinish: count>=60,
              onLoadMore: _loadMore,
              child: ListView.builder(
                itemBuilder:(BuildContext context,int index){
                  return ListTile(
                    title: Text('$index'),
                  );

                },
                itemCount: count,),

              whenEmptyLoad: false,
              delegate: DefaultLoadMoreDelegate(),
              textBuilder: DefaultLoadMoreTextBuilder.chinese,
              finishedText: '加载结束了',
              errorText: "加载失败，点击重试一下",) ,
            onRefresh: _refresh,
          )


        )

      ),
    );
  }
}

//class DFList extends StatefulWidget {
//  final bool loading;
//  final bool isFinished;
//  final RefreshCallback onRefresh;
//  final IndexedWidgetBuilder itemBuilder;
//  final int itemCount;
//  final ScrollController controller;
//
//  final ValueChanged<bool> onLoading;
//  final ValueChanged<bool> getMoreLoading;
//  final Widget noMoreWidget;
//  final Widget errorWidget;
//  final Widget loadWidget;
//
//  DFList(
//      {Key key,
//      this.loading,
//      this.isFinished,
//      this.onLoading,
//      this.getMoreLoading,
//      @required this.onRefresh,
//      @required this.itemBuilder,
//      @required this.itemCount,
//      this.controller,
//      this.noMoreWidget,
//      this.errorWidget,
//      this.loadWidget})
//      : super(key: key);
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    // throw UnimplementedError();
//    //return DFListThirdState();
//
//    return DFListState();
//  }
//}
//
//class DFListState extends State<DFList> {
//  List list = new List();
//  int index;
//  ScrollController scrollController = new ScrollController();
//
//  Future<Null> _onRefresh() async {
//    await Future.delayed(Duration(seconds: 3), () {
//      // Log.d("DFListState", 'refersh');
//      setState(() {
//        list = List.generate(20, (i) => '新刷新的 $i');
//      });
//    });
//  }
//
//  widgetBuilder() {
//    widget.itemBuilder(context, index);
//  }
//
//  Widget getWidgetBuilder(BuildContext context,int index){
//    return ListTile(
//      title: Text('$index'),
//    );
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return RefreshIndicator(
//      onRefresh: _onRefresh,
//      child: ListView.builder(
//        itemBuilder: getWidgetBuilder,
//        itemCount: list.length + 1,
//        controller: scrollController,
//      ),
//    );
//  }
//}
