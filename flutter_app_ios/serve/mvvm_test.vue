<template>
    <column id="column-warpper" >
      <button v-on:click="onClick" >
           v-on测试
        </button>
         <button @click="click">
           @click测试
        </button>
        <button @click="changeStyle">
          改变绑定的style
        </button>
         <button @click="changeProp">
          改变绑定的prop
        </button>
        <image style="width:200;height:200" :src="imgPath"></image>
        <input v-model="ptions.username" placeholder="username"  ></input>
              <text class="text-username" :style="style1" >{{ptions.username}}</text>

    </column>
</template>

<script>
export default {
  id: "mvvm",
  data:{
    inputType:"password",
    style1:"color:green",
    imgPath:"https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1576482354&di=bf4006eb232a72f77ae913307a817b59&src=http://www.linuxeden.com/wp-content/uploads/2018/06/065c4ee70c465f10b3a2750b631da7bcd61.jpg",
      ptions: {
        username: "admin",
        password: "password"
      },
    },
  methods: {
    click: function () {
      this.ptions.username = "@click绑定点击";
    },onClick: function () {
      this.ptions.username = "on-click指令绑定的点击";
    },changeStyle: function () {
      this.style1 = "color:red";
    },changeProp: function () {
      this.imgPath = "sds";
    },
  },
  mounted: function () {
  }
};
</script>
<style>
#column-warpper{
  alignment:center
}
button{
  background-color: orange;
}
.text-username{
  font-size: 24px;
  background: #eee;
}
</style>
