<template>
  <column class="col">
    <raisebutton class="rab">button</raisebutton>

    <text class="txt">hello world zheshi text cehsi</text>
    <text class="txt">这是一附图片，有关flutter的介绍，请访问flutter.io</text>
    <img
      class="ig"
      src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"
    />

    <text class="titl">Flutter demo 使用示例！！！</text>
    <raisebutton class="rab">button</raisebutton>
    <fabutton></fabutton>
    <iconbutton class="icb"></iconbutton>

   <!-- <gridview class="grd">
            <container class="items"></container>
             <iconbutton class="icb"> </iconbutton>

      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
      <container class="items"></container>
    </gridview> -->
  </column>
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
.col {
  alignment: left;
}

.txt {
  color: black;
}
.ig {
  scale: 1;
  width: 600;
  height: 400;
}
.grd {
  scrolldirection: vertical;
  crossaxiscount: 4;
}
.rab {
}
.titl {
  font-size: 26;
}
.icb {
  icon: hello;
}

.lv {
}
</style>
