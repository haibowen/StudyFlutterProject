//Row中会用到的属性
//  Row({
//     Key key,  // key
//     MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,  // 子控件放置方式
//     MainAxisSize mainAxisSize = MainAxisSize.max,  // 子控件应该如何沿着主轴放置
//     CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center, // 子控件对齐方式
//     TextDirection textDirection, // 从左到右，还是从右到左排序
//     VerticalDirection verticalDirection = VerticalDirection.down,  // 垂直排序
//     TextBaseline textBaseline, // 对齐文本的水平线
//     List<Widget> children = const <Widget>[], // 子控件
//   })

<template>
<container style="width:1200;height:200;background-color:blue">


  <row>

  <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<text style="color:black;font-size:22.0;">这里是在测试Text的使用。。。。</text>

      </row>


      </container>
</template>
<script>
export default {
  name: "vue demo hello",
  data: {
    msgdata: "",
    msg: "",
    result: "123",
    imgsrc: "",
    ptions: {
      username: "admin",
      password: "password"
    }
  },
  methods: {
    hello: function() {
      return "hello";
    }
  }
};
</script>
<style>
body {
  background: #eee;
  font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
  font-size: 14px;
  color: #000;
  margin: 0;
  padding: 0;
}
</style>

