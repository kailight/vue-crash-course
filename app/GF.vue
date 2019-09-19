<template lang="pug">
div.background
  div.content
    div.text-background
      .text
        p.first Hey kitty
        p Remember that jazz bar we've met for the first time, now seem ages ago...
        p But it is just 3 years this Saturday!
        p See you there this Sat at 6!
        p &nbsp;
        p.right John
    div.image-background
      .image
</template>


<style lang="stylus" scoped>
.background
  height 95vh
  display flex
  /* https://www.pexels.com/photo/empty-road-2419320/ */
  background-image url('/assets/background-tatoo.jpg')
  background-repeat no-repeat
  background-position 50%
  background-size cover
  text-align: center;
  .content
    min-width 80%
    max-width 90%
    border 0.5rem solid rgba(120,90,90,0.6)
    box-shadow 0.2rem 0.3rem 0.4rem rgba(0,0,0,0.3)
    display inline-flex
    border-radius 1rem
    margin-left auto
    margin-right auto
    margin-top 5rem
    height 70%
    .image-background
      width 50%
      background rgba(255,255,255,0.3)
      height 100%
      .image
        width 100%
        height 100%
        /* https://www.pexels.com/photo/cull-pistol-establishment-during-nighttime-2260824/ */
        background-image url('/assets/bar2.jpg')
        background-repeat no-repeat
        background-position top left
        background-size cover
    .text-background
      margin-left 0rem
      padding 0 2rem
      width 50%
      background rgba(0,0,0,0.7)
      color rgba(255,255,255,1)
      height 100%
      .text
        p.first
          font-size 2.2rem
        p:not(.first)
          font-family sans-serif
          text-align left
        p.right
          text-align right
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
