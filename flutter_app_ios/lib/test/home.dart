import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "测试",
      home: Home(),
    );
    //Home();
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text(
                'anniu',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            Radio(),
            Checkbox(
              value: _isSelect,
              onChanged: (value) {
                setState(() {
                  _isSelect = !_isSelect;
                });
              },
              hoverColor: Colors.yellow,
            ),
            Container(
              height: 800,

              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                children: <Widget>[
                  Container(
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  RaisedButton(
                    child: Text('测试dialog的按钮'),
                    onPressed: () async {
                      bool delete = await showDeleteDialog("这是dialog的删除测试","这是dialog内部内容的展示");
                      if (delete == null) {
                        print('取消删除');
                      } else {
                        print("确认删除");
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text('测试dialog的按钮'),
                    onPressed: () async {
                      await showListDialog("这是dialog的删除测试",{1:"123",2:"345",3:"456"});

                    },
                  ),
                  RaisedButton(
                    child: Text('测试dialog的按钮'),
                    onPressed: () async {
                     await showModalBottomSheetDialog();

                    },
                  ),
                  RaisedButton(
                    child: Text('测试dialog的按钮'),
                    onPressed: () async {
                     await showLoadingDialog();

                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }

  Future<bool> showDeleteDialog(String title,String content) {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text("删除"),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }


  Future<bool> showDeleteDialog1(String title, String content) {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text("删除"),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }

  ///列表类型的dailog
  Future<void> showListDialog(String title, Map<int, String> mapContent) async {
    int i = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(title),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(mapContent[1]),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(mapContent[2]),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(mapContent[3]),
                ),
              ),
            ],
          );
        });
  }

  ///loading 类型的对话框
  Future<void> showLoadingDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0),
                  child: Text("正在加载，请稍后..."),
                )
              ],
            ),
          );
        });
  }
  ///底部弹出的对话框

  Future<int> showModalBottomSheetDialog() {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("$index"),
              onTap: () => Navigator.of(context).pop(index),
            );
          },
        );
      },
    );
  }
}
