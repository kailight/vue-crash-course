<template lang="pug">
div
  .welcome.wrapper
    .welcome_image
    .welcome_message Hi, I am {{Admin.name}}!
  .form2.wrapper(v-if='!User.haveBeenTryingToLogin')
    .question What is your name?
    input.username(v-model='User.name' type='text')
    button(@click='login') &check;
    // .debug
      strong User.name
      |  {{User.name}}
</template>


<style lang="stylus">
.welcome {
  font-size : 2rem;
  text-align : center;
  margin: 4rem auto 2rem auto;
  width: 100%;
}

.welcome_image {
  height: 12rem;
  width: 12rem;
  border-radius: 8rem;
  margin: 1rem auto;
  background-image: url('/assets/avatar.jpeg');
  background-size: cover;
  background-position: 50%;
  border: 1px solid #a9463a;
}


.form2
  margin : auto;
  text-align: center;
  padding: 1rem;
  .question
    margin: 1rem auto;
    font-size: 0.8rem;
  debug
    font-size: 0.8rem;
    margin: 0.5rem;
  button
    font-size: 0.8rem;
    padding: 0.5rem 0.8rem;
    border-radius: 0 0.5rem 0.5rem 0;
    margin-left: -2.3rem;
    border: 0px solid #a9463a;
    background-color: #a9463a;
    color: white;
    outline: none;
    cursor: pointer;
  input.username
    height: 1.4rem;
    width: 16rem;
    padding: 0.2rem 0.6rem;
    font-size: 0.8rem;
    border-radius: 0.6rem;
    border: 1px solid #a9463a;
    outline: none;
  .greeting
    margin-top: 0.8rem;
</style>


<script>
export default {
  props : {
    User: Object,
  },
  data() {
    // This is the object we are working with
    return {
      Admin : {
        name : 'John',
      },
    }
  },
  methods: {
    login() {
      this.$emit('login')
    },
    loggedInAs(username) {
      if (this.User.loggedIn && this.User.name === username) {
        return true
      } else {
        return false
      }
    },
    failedToLogin() {
      return !this.User.loggedIn && this.User.haveBeenTryingToLogin
    },
  }
}
</script>
