<template lang="pug">
#div
  audio#scream(src="/assets/scream.mp3")
  intro(:User="User" v-if="!User.loggedIn" @login="login()")
  content2(:User="User")
</template>



<style lang="stylus">
@import url('https://fonts.googleapis.com/css?family=Lexend+Deca&display=swap');

$color-main = #333

body
  color $color-main
  // font-family Arial, Helvetica, sans-serif
  font-family 'Lexend Deca', Arial, Helvetica, sans-serif

a
  color #a9463a

</style>



<script>
import Users from './Users.js'
import Intro from './Intro.vue'
import Content from './Content.vue'



export default {
  components : {
    'intro' : Intro,
    'content2' : Content,
  },
  data() {
    // This is the object we are working with
    return {
      User : {
        haveBeenTryingToLogin : false,
        loggedIn : false,
        name : '',
        agreesToConditions : false
      },
      Users : Users,
      showGreeting : false
    }
  },
  methods: {
    login() {
      console.info('login()')
      if (this.User.name.length > 3) {
        this.showGreeting = true
        this.User.haveBeenTryingToLogin = true
        if (this.Users.indexOf(this.User.name) > - 1) {
          this.User.loggedIn = true
        }
      }

    },
  },
  mounted() {

  }
}
</script>

