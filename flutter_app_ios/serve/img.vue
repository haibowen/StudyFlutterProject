<template>
  <column class="col">
    <img
      class="ig"
      src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"
    />

    <img
      class="ig1"
      src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"
    />

    <img
      class="ig2"
      src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"
    />

    <img
      class="ig3"
      src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"
    />

    <img
      class="ig4"
      src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575447881063&di=d2701bdc2a2401a7d623160bec405fe7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201204%2F25%2F20120425212720_cTa5K.thumb.700_0.jpeg"
    />

  </column>
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
.col {
  alignment: left;
}

.ig {
  scale: 1;
  width: 600;
  height: 200;
}
.ig1 {
  scale: 1;
  width: 200;
  height: 200;
  fit: cover;
}
.ig2 {
  scale: 1;
  width: 200;
  height: 200;
  fit: scale-down;
  alignment: center;
}
.ig3 {
  scale: 1;
  width: 200;
  height: 200;
  fit: scale-down;
  alignment: center;
  repeat: repeat-y;
  filterquality: medium;
}
.ig4 {

}
.ig5 {
}
.ig6 {
}
.ig7 {
}
</style>
