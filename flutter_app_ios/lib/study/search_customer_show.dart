import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ios/study/test.dart';

class CustomerSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          border: new Border.all(width: 2.0, color: Colors.red),
          color: Colors.grey,
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.search),
            TextField(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(TestShow());
}

class TestShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestShowState();
  }
}

class TestShowState extends State<TestShow> {
  String _inputText = "";
  bool _hasdeleteIcon = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = new TextEditingController.fromValue(
        TextEditingValue(
            text: _inputText,
            selection: new TextSelection.fromPosition(TextPosition(
                affinity: TextAffinity.downstream,
                offset: _inputText.length))));

    print(_controller.text.length.toString() + "#########################");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('测试'),
        ),
        body: Column(
          children: <Widget>[
            Container(
                height: 60,
                color: Colors.white,
                child: Center(
                  child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 40,
                      decoration: BoxDecoration(
                        //border: new Border.all(width: 2.0, color: Colors.black),
                        color: Colors.grey[300],
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(18.0)),
                      ),
                      child: Center(
                        child: Container(
                          child: TextField(
                            onChanged: (str) {
                              setState(() {
                                _inputText = str;
                                _hasdeleteIcon = (_inputText.isNotEmpty);
                                //widget.fieldCallBack(_inputText);
                              });
                            },
                            controller: _controller,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              suffixIcon: _controller.text.length>0
                                  ? IconButton(
                                      icon: Icon(Icons.cancel),
                                      onPressed: () {
//                                  setState(() {
//                                    print('执行了');
//                                    _controller.clear();
//                                  }

                                      setState(() {
                                        _inputText = "";
                                        _hasdeleteIcon = (_inputText.isNotEmpty);
                                      });
//                                        Future.delayed(
//                                                Duration(milliseconds: 50))
//                                            .then((_) {
//                                          _controller.clear();
//                                          _hasdeleteIcon =
//                                              false;
//                                          print('$_hasdeleteIcon'+"%%%%%%%%%%%%%%%%%%%%%%");
//                                          FocusScope.of(context).unfocus();
//                                        }
////
//
//                                                );
                                      },
                                    )
                                  : Text(''),
                              contentPadding: EdgeInsets.only(top: 5),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              hintText: '请输入要输入的东西',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18.0))),
                            ),
                          ),
                        ),
                      )),
                )),
            SizedBox(
              height: 60,
              width: 600,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: '请输入',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 90,
                  width: 600,
                  color: Colors.red,
                ),
                Positioned(
                  //top: 20,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: '请输入',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),


            ITextField(

                keyboardType: ITextInputType.text,
                hintText: '请输入手机号',
                hintStyle: TextStyle(color: Colors.white),
                textStyle: TextStyle(color: Colors.black),
                fieldCallBack: (content) {
//                  _phoneNumber = content;
//                  print(_phoneNumber);
                },

            ),
          ],
        ),
      ),
    );
  }
}
