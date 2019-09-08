<template lang="pug">
.help
  div.help-block
    h1 How to refer to images

    h4 1. Using filesystem synthax
    code &lt;div style="background-image: url('avatar.jpeg')">
    code &lt;div style="background-image: url('../dir/avatar.jpeg')">
    .pros <b>+</b> Very simple synthax
    .pros <b>+</b> Images can be put right at hand
    .cons <b>-</b> Can't refer to root dir (<b>/app</b>)<br>
    .images
      .src
        code &lt;img src="avatar.jpeg">
        img(style="width: 300px; height: 180px" src="avatar.jpeg")
      .background
        code &lt;div style="background-image: url('avatar.jpeg')">
        div(style="width: 300px; height: 180px; background-image: url('avatar.jpeg');")

    h4 2. Using /webpack/static dir
    code &lt;div style="background-image: url('/static/avatar.jpeg')">
    code &lt;div style="background-image: url('/static/images/avatar.jpeg')">
    .pros <b>+</b> Refer to images from anywhere using special dir
    .cons <b>-</b> Outside of <b>/app</b> root
    .images
      .src
        code &lt;img src="/static/avatar.jpeg">
        img(style="width: 300px; height: 180px" src="/static/avatar.jpeg")
      .background
        code &lt;div style="background-image: url('/static/avatar.jpeg')">
        div(style="width: 300px; height: 180px; background-image: url(/static/avatar.jpeg)")
</template>


<style lang="stylus">
.help
  text-align left

h1,h4
  text-align center

.help-block
  margin-top 2rem

div
  margin-top 1rem

code
  display block
  margin-top 0.5rem

h4
  margin-top 2rem

.images
  height auto
  code
    font-size 0.8rem
    color #666
    padding-left 1rem
  .src
    width 50%
    display inline-block
    margin 0
    img
      margin 1rem
  .background
    width 50%
    float left
    margin 0
    display inline-block
    > div
      margin 1rem
      background-size contain

.pros
  color #1f7a06
.cons
  color #7a1f06
</style>


<script>
  export default {
    data() {
      // This is the object we are working with
      return {
      }
    },
    methods: {
    }
  }
</script>
