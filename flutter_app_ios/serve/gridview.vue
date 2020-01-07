<template>
  <container class="wrapp">
    <gridview class ="grid">
     <text>222222</text>
     <text>222222</text>
      <text>222222</text>
       <text>222222</text>
        <text>222222</text> <text>222222</text>

    </gridview>
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
.items {
background-color:black
}
.wrapp {
  height: 800;
  background-color:red
}
.grid {
  crossAxisCount: 4;
  scrollDirection:vertical;
}
</style>
