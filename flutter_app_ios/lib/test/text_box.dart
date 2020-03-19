import 'package:flutter/material.dart';

///父组件控制管理子组件的状态
class TextBox extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TextBox({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'active' : 'show',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(TextShow());
}

class TextShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return TextShowState();
  }
}

class TextShowState extends State<TextShow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('显示'),
          ),
          body: Column(
            children: <Widget>[
              TextBox(
                active: true,
                //onChanged: (value){
              ),
              Echo(
                text: 'xianshi ',
                backgroundColor: Colors.red,
              ),
//            DFList(
//              title: '这是类表',
//              children: <Widget>[
//                Text('显示'),
//                Text('显示'),
//                Text('显示'),
//
//              ],
//            ),
              DFList.builder(
                itemBuilder: getWidget,
                itemCount: 12,
                controller: ScrollController(),
              ),


            ],
          )),
    );
  }

  Widget getWidget(BuildContext buildContext, int index) {
    return ListTile(
      title: Text('1'),
    );
  }
}

class Echo extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  Echo({Key key, this.text, this.backgroundColor: Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Center(
      child: Container(
        child: Text(text),
        color: backgroundColor,
      ),
    );
  }
}

class DFList extends StatelessWidget {
// final List<Widget> children;
//  final String title;
//final ScrollController scrollController;
// final IndexedWidgetBuilder itemBuilder;
// final int itemCount,

  DFList.builder({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    @required IndexedWidgetBuilder itemBuilder,
    int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
  })  : assert(itemCount == null || itemCount >= 0),
        assert(semanticChildCount == null || semanticChildCount <= itemCount),
        super(
          key: key,
        );

  // DFList({Key key,this.title,this.children}):super(key:key);

  // DFList.builder({Key key,this.title,this.scrollController,@required this.itemBuilder,this.itemCount,this.children}):super(key:key);

//    Widget getWidget(BuildContext context,int index){
//      return ListTile(
//        title: Text('1'),
//      );
//  }
  Widget getWidget(BuildContext context, int index) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(height: 400, child: Text('11111')
//      ListView.builder(itemBuilder: ,
//      itemCount: ,
//      controller: ScrollController(),)

        );
  }
}



class DFListThird extends StatefulWidget {
  final bool loading;
  final bool isFinished;
  final RefreshCallback onRefresh;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final ScrollController controller;

  final ValueChanged<bool> onLoading;
  final ValueChanged<bool> getMoreLoading;
  final Widget noMoreWidget;
  final Widget errorWidget;
  final Widget loadWidget;

  DFListThird(
      {Key key,
      this.loading,
      this.isFinished,
      this.onLoading,
      this.getMoreLoading,
      @required this.onRefresh,
      @required this.itemBuilder,
      @required this.itemCount,
      this.controller,
      this.noMoreWidget,
      this.errorWidget,
      this.loadWidget})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    //return DFListThirdState();

    return DFListThirdState();
  }
}

class DFListThirdState extends State<DFListThird> {
  List list = new List();
  int index;
  ScrollController scrollController = new ScrollController();

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      // Log.d("DFListState", 'refersh');
      setState(() {
        list = List.generate(20, (i) => '新刷新的 $i');
      });
    });
  }

  widgetBuilder() {
    widget.itemBuilder(context, index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder: this.widgetBuilder(),
        itemCount: list.length + 1,
        controller: scrollController,
      ),
    );
  }
}
