<template>
<container style="width:200;height:200;background-color:blue">
   <column style="alignment:center;mainAxisSize:min;text-baseline:ideographic;textDirection:rtl">
    <text style="color:red;">hello world1144</text>
     <text style="color:red;">hello world1144</text>
      <text style="color:red;">hello world1144</text>
   </column>
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
