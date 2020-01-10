

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String datasource ="""
# flutter_app_ios

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



### Scaffold

vue页面使用<Scaffold/>来开发应用的页面，这里的scaffold对应flutter的scaffold的组件，基本的使用如下所示：

~~~vue
<template>
<scaffold>
  <appbar class="app-bar">{{appTitle}}</appbar>
  <drawer></drawer>
  <content>
    <column>
      <button @click="changeAppbar">改变appbar值</button>
      <text>bodyvvvv</text>
      <text>sss</text>
      <text>bodyvvvv</text>
      <img
        :src="imgPath"
      />
      <text>1111111</text>
    </column>
  </content>
  <fabutton class="fab"></fabutton>
  <botnavbar class="bot"></botnavbar>
</scaffold>
</template>
    
~~~



scaffold是应用的最外层的布局，里面主要分为四个部分，分别是
scaffold是应用的最外层的布局，里面主要分为四个部分，分别是

| appbar    | （页面的标题栏部分） |
| --------- | -------------------- |
| drawer    | （侧滑部分）         |
| content   | （页面的body部分）   |
| fabutton  | （悬浮按钮部分）     |
| botnavbar | （底部导航部分）     |


"""

;


void main()=>runApp(MarkDown());
class MarkDown extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return MardownState();


  }

}

class MardownState extends State<MarkDown>{
  @override
  Widget build(BuildContext context) {
    print('###################111');

    return MaterialApp(
      home: Scaffold(
        body: Markdown(
          data:datasource ,
        ),
      ),
    );

  }

}