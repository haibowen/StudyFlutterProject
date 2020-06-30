

import 'dart:io';

void main(){

  print("start");
 // print(getSomeThing());
  //print(getFutureSome());
//  var future=getFutureSome();
//  future.then((value){
//    print(value);
//  });
//  print(future);
//  var content=getAsyncSome();
//  content.then((value){
//    print(value);
//  });
//  print(content);
  print(getAsyncSome());
  print("end");
}

//阻塞执行
String getSomeThing(){

  sleep(Duration(seconds: 3));
  return "hyPlo";

}
//非阻塞执行
Future <String> getFutureSome(){
  return Future<String>((){
    sleep(Duration(seconds: 3));
    return "hyPlo";
  });
}
//await跟async的使用
Future<String> getAsyncSome()async{

  var result=await Future.delayed(Duration(seconds: 3),(){
    return "netWork";
  });
  return "请求到的数据"+result;
}