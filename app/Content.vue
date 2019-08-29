<template>
  <div class="content tabs">
    <div class="tab content" v-if="failedToLogin()">
      <div class="message1">{{User.name}}? Nice to meet you!</div>
      <div class="message2"><a href="#skills">Let me tell you more about things I like</a></div>
      <skills :skills="Skills">
      </skills>
      <div class="contacts">
        Drop me a message via email: <a href="mailto:user@site.com">user@site.com</a>
      </div>
    </div>
    <content-for-neo class="tab" v-if="loggedInAs('neo66')">
    </content-for-neo>
    <content-for-gf class="tab" v-if="loggedInAs('gf55')">
    </content-for-gf>
    <content-for-mom class="tab" v-if="loggedInAs('mom77')">
    </content-for-mom>
  </div>
</template>

<style lang="stylus">
.content
  .message1
    font-size 1.4rem
  .message2
    margin-top 0.8rem
    font-size 0.8rem
    a
      text-decoration none
  .contacts
    clear both
    margin-top 2rem
    font-size 0.8rem
.tab
  text-align center
  padding 1rem
  min-height 10rem
</style>


<script>
import ContentForNeo from './Neo.vue'
import ContentForGF from './GF.vue'
import ContentForMom from './Mom.vue'
import Skills from './Skills.vue'

export default {
  components : {
    'content-for-neo' : ContentForNeo,
    'content-for-gf' : ContentForGF,
    'content-for-mom' : ContentForMom,
    'skills' : Skills,
  },
  props : {
    User: Object,
    Users: Array,
    Skills: Array
  },
  data() {
    // This is the object we are working with
    return {
    }
  },
  computed : {
  },
  methods: {
    failedToLogin() {
      return !this.User.loggedIn && this.User.haveBeenTryingToLogin
    },
    loggedInAs(username) {
      if (this.User.loggedIn && this.User.name === username) {
        return true
      } else {
        return false
      }
    },
  }
}

</script>
