<template>

  <fabutton class="fab"></fabutton>

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

.fab{
  elevation:15.0;
  background-color:red;
  focusColor:black;
  hoverColor:blue;
  isExtended:true;
}


</style>
