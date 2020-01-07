<template>
  <text class="txt">这里是在测试Text的使用。。。。</text>
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
.txt {
  color: blue;
  font-size: 30;
  background-color: red;
}
</style>
