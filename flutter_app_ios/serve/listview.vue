<template>
  <container class ="cons">
 <listview class ="lv">
 <!-- <container class="con"></container>
  <container class="con"></container>
   <container class="con"></container> -->
 <raisebutton>hello rasie button</raisebutton>
 <raisebutton>hello rasie button</raisebutton>
 <raisebutton>hello rasie button</raisebutton>
 <raisebutton>hello rasie button</raisebutton>
 <raisebutton>hello rasie button</raisebutton>
 <raisebutton>hello rasie button</raisebutton>
 
   <text>111</text>
   <text>111</text>
   <text>111</text>
   <text>111</text>
   <text>111</text>

   <img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>
<img class="ig" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"></img>

<iconbutton class="icb"></iconbutton>
<iconbutton class="icb"></iconbutton>
<iconbutton class="icb"></iconbutton>
<iconbutton class="icb"></iconbutton>
<iconbutton class="icb"></iconbutton>

  <fabutton class="fab"></fabutton>
  <fabutton class="fab"></fabutton>
  <fabutton class="fab"></fabutton>
  <fabutton class="fab"></fabutton>

 </listview>
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

.lv{
scrollDirection :horizontal;
reverse:false;
primary:true;
cacheExtent:30;
shrinkWrap:true;
padding:20.0;
}

.con{
background-color:black
height:200;
width:200;

}
.cons{
background-color:blue;
height:550;
}
.ig{
}
.icb{
color:red;
iconsize:255.0;
padding:19.0;
alignment:left;
icon:hello;
}
.fab{
  icon:hello;
  elevation:2.0;
  background-color:red;
}
</style>
