

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/test/app.dart';

void main()=>runApp(ExpationTitleTest());

class ExpationTitleTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return ExpationTitleState();

  }


}

class ExpationTitleState extends State<ExpationTitleTest>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('expation title'),
        ),
        body: SingleChildScrollView(
          child: ExpansionTile(
              title: Text('展开闭合demo'),
              leading: Icon(Icons.ac_unit, color: Colors.green),
              backgroundColor: Colors.white,
              initiallyExpanded: true, // 是否默认展开
              children: <Widget>[
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('scffold组件'),
                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
                ListTile(
                  onTap: (){
                    print('我执行了');
                  },
                  title:Text('appbar组件'),
                  subtitle: Text('介绍使用'),

                ),
              ]
          ) ,
        )

      ),
    );



  }

}