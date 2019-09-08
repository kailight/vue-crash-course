<template>
<div id="app">

  <intro :User="User" @login="login()"></intro>
  <content2 :User="User"></content2>

</div>
</template>



<style>
#app {
  font-family : Arial, Helvetica, sans-serif;
  color: #333;
}

a {
  color : #a9463a;
}
</style>



<script>
import Intro from './Intro.vue'
import Content from './Content.vue'

export default {
  components : {
    'intro' : Intro,
    'content2' : Content
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
      Users : ['neo66','gf55','mom77','help88'],
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
  }
}
</script>

