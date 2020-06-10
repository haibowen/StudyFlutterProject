//import 'package:flutter/material.dart';
//import 'package:flutter_app_ios/appbrewery/expandel_test.dart';
//
//void main() {
//  runApp(MaterialApp(home:MApp() ,));
//}
//
//class MApp extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return MAppState();
//  }
//}
//
//class MAppState extends State<MApp> {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('显示'),
//        ),
//        body: RaisedButton(
//          child: Text('显示'),
//          onPressed: () {
//            showDeleteConfirmDialog1(context);
//          },
//        ),
//      ),
//    );
//  }
//
//  Future<bool> showCustomerDialog() {
//    return showDialog(
//        context: context,
//        builder: (context) {
//          return AlertDialog(
//            backgroundColor: Colors.grey,
//            content: Container(
//              height: 600,
//              width: 400,
//            ),
//          );
//        });
//  }
//
//
//
//  // 弹出对话框
//  Future<bool> showDeleteConfirmDialog1(BuildContext context) {
//    return showDialog<bool>(
//      context: context,
//      builder: (context) {
//        return AlertDialog(
//          title: Text("提示"),
//          content: Text("您确定要删除当前文件吗?"),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("取消"),
//              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
//            ),
//            FlatButton(
//              child: Text("删除"),
//              onPressed: () {
//                //关闭对话框并返回true
//                Navigator.of(context).pop(true);
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }
//
//
//
//}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Container(
        child: Center(
          child: RaisedButton(
            color: Colors.redAccent,
            textColor: Colors.white,
            onPressed: () async {
              //testAlert(context);
              if (true) {
                showCustomerDialog(context);
              }
            },
            child: Text("PressMe"),
          ),
        ),
      ),
    );
  }

//  void testAlert(BuildContext context) {
//    var alert = AlertDialog(
//      title: Text("Test"),
//      content: Text("Done..!"),
//    );
//
//    showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return alert;
//        });
//  }

  Future<bool> showCustomerDialog(BuildContext context) {
    return showDialogTest<bool>(
        context: context,
        builder: (context) {
          //return Text('');

          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            backgroundColor: Colors.black,
            content: Container(
              height: 0.01,
//color: Colors.grey,
//              height: MediaQuery.of(context).size.height,
//              width: MediaQuery.of(context).size.width,
            ),
          );
        });
  }
}

Future<T> showDialogTest<T>({
  @required
      BuildContext context,
  bool barrierDismissible = true,
  @Deprecated(
      'Instead of using the "child" argument, return the child from a closure '
      'provided to the "builder" argument. This will ensure that the BuildContext '
      'is appropriate for widgets built in the dialog. '
      'This feature was deprecated after v0.2.3.')
      Widget child,
  WidgetBuilder builder,
  bool useRootNavigator = true,
}) {
  assert(child == null || builder == null);
  assert(useRootNavigator != null);
  assert(debugCheckHasMaterialLocalizations(context));

  final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
  return showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      final Widget pageChild = child ?? Builder(builder: builder);
      return SafeArea(
        child: Builder(builder: (BuildContext context) {
          return theme != null
              ? Theme(data: theme, child: pageChild)
              : pageChild;
        }),
      );
    },
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.red.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 150),
    transitionBuilder: _buildMaterialDialogTransitions,
    useRootNavigator: useRootNavigator,
  );
}

Widget _buildMaterialDialogTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  return FadeTransition(
    opacity: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}
