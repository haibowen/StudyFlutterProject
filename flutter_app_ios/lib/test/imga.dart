

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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


void main()=>runApp(ImageTest());
class ImageTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return ImageTestState();


  }

}

class ImageTestState extends State<ImageTest>{
  @override
  Widget build(BuildContext context) {
    print('###################111');

    return MaterialApp(
      home: Scaffold(
        body: Column(

          children: <Widget>[
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg',
              fit: BoxFit.cover,
            width: 200,
            height: 200,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg',
              fit: BoxFit.contain,
              width: 200,
              height: 200,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg',
              fit: BoxFit.fill,
              width: 200,
              height: 200,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg',
              fit: BoxFit.scaleDown,
              width: 200,
              height: 200,),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg',
              fit: BoxFit.fitHeight,
              width: 200,
              height: 200,),
          ],
        )

      ),
    );

  }

}