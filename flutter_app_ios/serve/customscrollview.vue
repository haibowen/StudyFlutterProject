<template>
  <scaffold>
    <drawer class="drw">
      <drawer-header class="drw-header">
        <container class="cons"></container>
      </drawer-header>
      <list-title class="list-title">设置</list-title>
      <list-title class="list-title">显示</list-title>
      <list-title class="list-title">模式</list-title>
    </drawer>
    <content>
      <custom_scroll_view>
        <sliver_app_bar class="slp">demo</sliver_app_bar>
        <sliver_grid>
          <text></text>
        </sliver_grid>
        <sliver_list>
          <text></text>
        </sliver_list>
      </custom_scroll_view>
    </content>

    <fabutton class="fab"></fabutton>
  </scaffold>
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
.appbar {
  background-color: red;
  textcolor: blue;
  elevation: 38;
  iscentertitle: false;
  icon: hello;
}
.fab {
}
.drw {
}
.slp {
  textcolor: blue;
}
.drw-header {
}
.cons {
  padding-top: 133;
}
.list-title {
}
.icons {
  icon: hello;
}
</style>
