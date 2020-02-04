import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ListTitleExample());
}

class ListTitleExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListTitleExampleState();
  }
}

class ListTitleExampleState extends State<ListTitleExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(''),
          ),
          body: Column(
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                children: ListTile.divideTiles(context: context, tiles: [
                  Container(
                    height: 50,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text('分组一'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text('主标题'),
                    subtitle: Text('副标题'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text('主标题'),
                      subtitle: Text('副标题'),
                      trailing: Container(
                        width: 60,
                        child: Row(
                          children: <Widget>[
                            Text('123'),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      )

                      // contentPadding: EdgeInsets.symmetric(horizontal: 30.0),

                      )
                ]).toList(),
              ),
              ListView(
                shrinkWrap: true,
                children: ListTile.divideTiles(context: context, tiles: [
                  Container(
                    height: 50,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text('分组一'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text('主标题'),
                    subtitle: Text('副标题'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text('主标题'),
                      subtitle: Text('副标题'),
                      trailing: Container(
                        width: 60,
                        child: Row(
                          children: <Widget>[
                            Text('123'),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      )

                      // contentPadding: EdgeInsets.symmetric(horizontal: 30.0),

                      )
                ]).toList(),
              ),
            ],
          )),
    );
  }
}
