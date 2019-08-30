<template>
<div id="app">
  <div class="welcome wrapper">
    <div class="welcome_image"></div>
    <div class="welcome_message">Hi, I am {{Admin.name}}!</div>
  </div>
  <div class="form wrapper" v-if="!User.haveBeenTryingToLogin">
    <div class="question">What is your name?</div>
    <input class="username" v-model="User.name" type="text"/>
    <button @click="login">✓</button>
  </div>
  <div class="tabs-wrapper tabs">
    <div class="tab-content" v-if="!User.loggedIn && User.haveBeenTryingToLogin">
      <div>Hi, {{User.name}}!</div>
      <br><br>
      <div>Let me tell you more about myself!</div>
      <br><br>
      <div style="padding: 2rem; float: left;">I like snowboarding</div>
      <div style="padding: 2rem; float: left;">I like kittens</div>
      <div style="padding: 2rem; float: left;">I like cookies</div>
      <br><br><br><br>
    </div>
    <div v-if="User.haveBeenTryingToLogin">
      <div class="tab-content" v-if="User.name === 'John'">
        Content for John
      </div>
      <div class="tab-content" v-if="User.name === 'Mark'">
        Content for Mark
      </div>
      <div class="tab-content" v-if="User.name === 'Ivan'">
        Content for Ivan
      </div>
    </div>
  </div>
</div>
</template>



<style>
#app {
  font-family : Arial, sans-serif;
}


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

.wrapper {
  /*border: 1px solid darkred;*/
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


/* TABS */
.tabs-wrapper {
  margin-top: 3rem;
  margin-bottom: 5rem;
}

.tab-controls {
  padding: 0 1rem;
}

.tab-controls a {
  padding: 0.3rem 1rem;
  line-height: 1.5rem;
  color : #fff;
  border: 1px solid #a9463a;
  background-color: #a9463a;
  border-bottom: 0;
  text-decoration: none;
  border-radius: 0.7rem 0.7rem 0 0;
  font-size: 0.8rem;
}

.tab-content {
  text-align: center;
  padding: 2rem;
  border: 1px solid #a9463a;
  min-height: 10rem;
}

</style>



<script>
export default {
  data() {
    // This is the object we are working with
    return {
      Admin : {
        name : 'Alexander',
      },
      activeTab : 0,
      greeting : 'Hello',
      showGreeting : false,
      User : {
        loggedIn : false,
        haveBeenTryingToLogin : false,
        name : '',
        agreesToConditions : false
      }
    }
  },
  methods: {
    login() {
      console.info('login()')
      if (this.User.name.length > 3) {
        this.showGreeting = true
        this.User.haveBeenTryingToLogin = true
        let Users = ['John','Mark','Ivan']
        if (Users.indexOf(this.User.name) > -1) {
          this.User.loggedIn = true
        }
      }
    }
  }
}
</script>

