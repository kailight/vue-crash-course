<template lang="pug">
div.background
  div.content
    div.image-background
      .image
    div.text-background
      .text
        p.first Hey mom!
        p Just another opportunity to say I love you and grateful for the life you gave me to enjoy.
        p Meet soon! Hugs!
        p &nbsp;
        p.right Johnny
</template>


<style lang="stylus" scoped>
.background
  display flex
  /* https://www.friddadorsch.com/wp-content/uploads/2019/02/depth-of-field-hearts-shapes-863913.jpg */
  background-image url('/assets/background-hearts.jpg')
  background-repeat no-repeat
  background-position 50%
  background-size cover
  text-align center
  height 95vh
  .content
    min-width 80%
    max-width 90%
    border 0.4rem solid rgba(166,50,90,0.6)
    box-shadow 0.2rem 0.3rem 0.4rem rgba(0,0,0,0.3)
    display inline-flex
    border-radius 0.5rem
    margin-left auto
    margin-right auto
    margin-top 5rem
    height 70%
    .image-background
      width 50%
      background rgba(255,255,255,0.3)
      .image
        width 100%
        height 100%
        /* https://www.pexels.com/photo/woman-carrying-baby-near-grass-1261909/ */
        background-image url('/assets/mother-child.jpg')
        background-repeat no-repeat
        background-position 50%
        background-size cover
    .text-background
      margin-left 0rem
      padding 1rem 2rem
      width 50%
      background rgba(255,255,255,0.5)
      color rgba(0,0,0,1)
      .text
        p.first
          font-size 2rem
        p:not(.first)
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
