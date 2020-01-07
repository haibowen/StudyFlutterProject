
<template>
<scaffold>
  <appbar class="app-bar">{{appTitle}}</appbar>
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
<script>
export default {
  name: "vue demo hello",
  data: {
    appTitle: "init",
    imgPath:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577012397534&di=74d6395eb1a94fb78bc74f18693eeb65&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fa71ea8d3fd1f4134ff7d7513221f95cad1c85e10.jpg"
  },
  methods: {
    changeAppbar: function() {
      this.data.appTitle="8869698"
    }
  }
};
</script>
<style>
.app-bar{

}
.cons{
background-color:black;
}
.fab{


}
.bot{
item_icon1:hello;
item_icon2:remove;
item_icon3:check;
item_text1:页面1;
item_text2:页面2；
item_text3:页面3；
unselectedItemColor : black;
}


</style>

