<template>
 <column class="col">

 <raisebutton class="rab">button</raisebutton>
 <raisebutton class="rab1">button</raisebutton>
 <raisebutton class="rab2">button</raisebutton>
  <raisebutton class="rab3">button</raisebutton>
   <raisebutton class="rab4">button</raisebutton>
    <raisebutton class="rab5">button</raisebutton>
    <raisebutton class="rab6">button</raisebutton>


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

.col{
alignment:left;
}



.rab{
color:blue;

}
.rab1{
background-color:black;

}
.rab2{
textTheme:primary;
}
.rab3{
disabledColor:black;
}
.rab4{
elevation:18.0;

}
.rab5{
padding:8.0;

}
.rab6{
disabledElevation:60;
disabledTextColor:red;
}
</style>
