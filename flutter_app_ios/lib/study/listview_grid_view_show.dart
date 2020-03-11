import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppbar());
}

class MyAppbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppbarState();
  }
}

class MyAppbarState extends State<MyAppbar> {
  Widget image = Image(
    image: AssetImage('images/google_photo.png'),
    width: 200.0,
    height: 200.0,
  );

  @override
  Widget build(BuildContext context) {
    String str = "ASSDFGHJKLQWERTYUIOZXCVBNM";
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('appbar'),
            leading: Builder(builder: (context) {
              return IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  });
            }),
          ),
          body: Column(
            children: <Widget>[
              Text('商品列表'),
//              Expanded(
//                child: ListView.builder(
//                  itemBuilder: (context, index) {
//                    return ListTile(
//                      title: Text('$index'),
//                    );
//                  },
//                  itemCount: 40,
//                ) ,
//              ),
              SizedBox(
                height: 100,
              ),
              Flex(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.start,
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 20,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: Container(
                      height: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 20,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 20,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
              DFFlexTest(
                direction: Axis.horizontal,
                children: <Widget>[
                  DFFlexed(
                    flex: 1,
                    child: Container(
                      color: Colors.lightBlueAccent,
                      height: 20,
                    ),
                  ),
                  DFFlexed(
                    flex: 19,
                    child: Container(
                      color: Colors.deepOrange,
                      height: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  DFFlexed(
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                      height: 20,
                    ),
                  ),
                  DFFlexed(
                    flex: 6,
                    child: Container(
                      color: Colors.black,
                      height: 20,
                    ),
                  ),
                  CupertinoSwitch(
                  activeColor: Colors.orange,value: false, onChanged: (val) {})
                ],
              ),
              Transform.scale(scale: 1.5,
              child:  SizedBox(
                width: 400,
                child: CupertinoSwitch(value: false, onChanged: (val) {}),
              )
                ,),

              Transform.scale(
                scale: 2,
                child: SizedBox(
                  width: 300,
                  child: Switch(
                    value: false,
                    onChanged: (va) {},
                  ),
                ),
              ),
              SwitchListTile(
                title: Text('显示'),
                value: true,
                onChanged: (va){


                },
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                //width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text('显示'),
                    CupertinoSwitch(value: false,
                    onChanged: (va){

                    },),
                  ],
                ),
              ),
              CupertinoDatePicker(onDateTimeChanged: (val){


              }),
            ],
          )),
    );
  }
}

class DFFlex extends StatelessWidget {
  DFFlex({Key key, this.flex, this.direction = Axis.horizontal, this.child})
      : super(key: key);
  final Axis direction;
  final int flex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: <Widget>[
        Expanded(
          flex: flex,
          child: child,
        ),
      ],
    );
  }
}

class DFFlexTest extends StatelessWidget {
  final List<Widget> children;

  final Axis direction;

  DFFlexTest({this.children = const <Widget>[], this.direction});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: children,
    );
  }
}

//按比例划分的组件
class DFFlexed extends StatelessWidget {
  DFFlexed({Key key, this.flex, this.child}) : super(key: key);
  final int flex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: child,
    );
  }
}
