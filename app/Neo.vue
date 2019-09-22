<template lang="pug">
  div.background
    div.content
      div.text-background
        .text.text1(v-show="!scare")
          p.first Hey Neo
          p It was not long time ago I've told you to follow the white rabbit
          p But since then you've decided to take red pill...
          p And pills are bad for your mental health...
          p &nbsp;
          p.right John
        .scary_image(v-show="scare")

      div.image-background
        .image
</template>


<style lang="stylus" scoped>
  .background
    height 95vh
    display flex
    /*  */
    background-image url('/assets/background-city-bar.jpg')
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
          background-image url('/assets/phone.jpg')
          background-repeat no-repeat
          background-position center
          background-size cover
          opacity 0.8
      .text-background
        margin-left 0rem
        width 50%
        background rgba(0,0,0,0.7)
        color rgba(255,255,255,1)
        height 100%
        .text
          padding 0 2rem
          p.first
            font-size 2.2rem
          p:not(.first)
            font-family sans-serif
            text-align left
          p.right
            text-align right
        .scary_image
          height 100%
          background url('/assets/wabbit.jpg')
          background-repeat no-repeat
          background-position center
          background-size cover

</style>


<script>

export default {
  data() {
    // This is the data object containing all the data
    return {
      scare : false
    }
  },
  methods: {
  },
  mounted() {
    setTimeout( () => {
      let res = document.querySelector('#scream').play();
      this.scare = true
    }, 5000 )
  }
}
</script>
