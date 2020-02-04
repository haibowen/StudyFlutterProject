import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyList());

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('下拉框测试'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return MyItem(data[index]);
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  MyItem(this.mydata);

  Mydata mydata;

  @override
  Widget build(BuildContext context) {
    return _getWidget(mydata);
  }

  Widget _getWidget(Mydata root) {
    if (root.children.isEmpty)
      return new ListTile(
        title: new Text(root.title),
      );
    return new ExpansionTile(
      key: new PageStorageKey<Mydata>(root),
      title: new Text(root.title),
      children: root.children.map(_getWidget).toList(),
    );
  }
}

class Mydata {
  String title;
  List<Mydata> children;

  Mydata(this.title, [this.children = const <Mydata>[]]);
}

List<Mydata> data = <Mydata>[
  new Mydata("科目一", <Mydata>[
    new Mydata('科目一点一', <Mydata>[
      new Mydata('1'),
      new Mydata('2'),
      new Mydata('3'),
    ])
  ]),
  new Mydata('科目二', <Mydata>[
    new Mydata('科目二', <Mydata>[
      new Mydata('1'),
      new Mydata('2'),
      new Mydata('3'),
    ])
  ])
];
