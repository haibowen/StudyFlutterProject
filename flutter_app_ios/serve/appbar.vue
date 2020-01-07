<template>
<scaffold>
  <app-bar class="appbar">123
  </app-bar>
   <drawer class="drw">
               <drawer-header class="drw-header">
                 <container class="cons"></container>
               </drawer-header>
               <list-title class="list-title">设置</list-title>
               <list-title class="list-title">显示</list-title>
               <list-title class="list-title">模式</list-title>
             </drawer>
  <content>
    <column>
      <button @click="changeAppbar">改变appbar值</button>

      <text>bodyvvvv</text>

    </column>
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

.appbar{





}
.fab{

}
.drw{

}
.drw-header{

}
.cons{
padding-top:133.0;
}
.list-title{

}
.icons{
icon:hello;
}
.icb{
icon:hello;
}



</style>
