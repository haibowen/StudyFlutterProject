
<template>
  <container style="width:400;height:400;background-color:blue">
  <iconbutton style="color:red;iconsize:255.0;padding:19.0;alignment:left;icon:hello;highlightColor:red"></iconbutton>
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
