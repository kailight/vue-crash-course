<template>
<div>
  <div class="welcome wrapper">
    <div class="welcome_image"></div>
    <div class="welcome_message">Hi, I am {{Admin.name}}!</div>
  </div>
  <div v-if="!User.haveBeenTryingToLogin" class="form wrapper">
    <div class="question">What is your name?</div>
    <input class="username" v-model="User.name" type="text" />
    <button @click="login">✓</button>
    <!--<div class="debug"><strong>User.name</strong> {{User.name}}</div>-->
  </div>
</div>
</template>


<style>
.welcome {
  font-size : 2rem;
  color : #333;
  text-align : center;
  margin: 4rem auto 2rem auto;
  width: 100%;
}

.welcome_image {
  height: 12rem;
  width: 12rem;
  border-radius: 8rem;
  margin: 1rem auto;
  background-image: url('https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=375&w=630');
  background-size: cover;
  background-position: 50%;
  border: 1px solid #a9463a;
}

.welcome_message {

}

.form {
  margin : auto;
  text-align: center;
  padding: 1rem;
}

.form .question {
  margin: 1rem auto;
  font-size: 0.8rem;
}

.form .debug {
  font-size: 0.8rem;
  margin: 0.5rem;
}

.form button {
  font-size: 0.8rem;
  padding: 0.5rem 0.8rem;
  border-radius: 0 0.5rem 0.5rem 0;
  margin-left: -2.3rem;
  border: 0px solid #a9463a;
  background-color: #a9463a;
  color: white;
  outline: none;
  cursor: pointer;
}

.form input.username {
  height: 1.4rem;
  width: 16rem;
  padding: 0.2rem 0.6rem;
  font-size: 0.8rem;
  border-radius: 0.6rem;
  border: 1px solid #a9463a;
  outline: none;
}

.form .greeting {
  margin-top: 0.8rem;
}
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
