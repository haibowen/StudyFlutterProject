<template>
<container class="cons">
<column>
<text>123333</text>
<text>12333</text>

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

.cons{
width:200;
height:200;
background-color:red;
decoration:green;
padding-left:40.0;
padding-top:40.0;
padding-right:30.0;
padding-bottom:20.0;
padding:2 3 4 5;
}
</style>
