<template>
<div id="app">

  <div class="welcome wrapper">
    <div class="welcome_image"></div>
    <div class="welcome_message">Hi, I am {{Admin.name}}!</div>
  </div>
  <div v-if="!User.haveBeenTryingToLogin" class="form wrapper">
    <div class="question">What is your name?</div>
    <input class="username" v-model="User.name" type="text"/>
    <button @click="login">✓</button>
    <!--<div class="debug"><strong>User.name</strong> {{User.name}}</div>-->
  </div>


  <div class="tabs-wrapper tabs">
    <div class="tab-content unknown_user" v-if="failedToLogin()">
      <div class="message1">{{User.name}}? Nice to meet you!</div>
      <div class="message2"><a href="#skills">Let me tell you more about things I crave</a></div>
      <div class="skills" id="skills">
        <div class="skill" v-for="skill in Skills">
          <div class="title">{{title}}</div>
          <div class="image" :style="style"/>
          <div class="description">
            {{description}}
          </div>
        </div>
      </div>
      <div class="contacts">
        Drop me a message via email: <a href="mailto:user@site.com">user@site.com</a>
      </div>
    </div>
    <div class="tab-content" v-if="loggedInAs('neo66')">
      Content for neo66
    </div>
    <div class="tab-content" v-if="loggedInAs('Mark')">
      Content for Mark
    </div>
    <div class="tab-content" v-if="loggedInAs('Ivan')">
      Content for Ivan
    </div>
  </div>

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

.unknown_user {

}

.unknown_user .message1 {
  font-size: 1.4rem;
}

.unknown_user .message2 {
  margin-top: 0.8rem;
  font-size: 0.8rem;
}

.unknown_user .message2 a {
  text-decoration: none;
}

.unknown_user .skills {
  margin: 4rem auto 2rem auto;
  display: flex;
  clear: both;
  max-width: 800px;
}

.unknown_user .skills .skill {
  display: inline-block;
  width: 33%;
  max-width: 33%;
  padding: 0.7rem;
  /*border: 1px solid darksalmon;*/
}

.unknown_user .skills .skill .title {
  color: #000;
  font-size: 1.2rem;
}

.unknown_user .skills .skill .description {
  font-size: 0.8rem;
  text-align: left;
}

.unknown_user .skills .skill .image {
  margin-top: 1rem;
  padding-top: 70%;
  background-position: center;
  background-size: cover;
  border: 1px solid #666;
  /*border-radius: 0.4rem;*/
}

.unknown_user .contacts {
  clear: both;
  margin-top: 2rem;
  font-size: 0.8rem;
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
  margin-top: 5rem;
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
  padding: 1rem;
  min-height: 10rem;
}

</style>



<script>
var Users = ['neo66','Mark','Ivan']

export default {
  data() {
    // This is the object we are working with
    return {
      Admin : {
        name : 'Alexander',
      },
      User : {
        haveBeenTryingToLogin : false,
        loggedIn : false,
        name : '',
        agreesToConditions : false
      },
      showGreeting : false,
      Skills : [
        {
          title : 'Music',
          style : "background-image : url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmY8b8oXw0ZLL0pOG-xBs3y46psTYhW7oiyqTusJ2wsqwio5SX')",
          description : `
<p>I play guitar in a rock band.</p>
<p>Our next gig going to be on sunday. Jump in!</p>
`
        },
        {
          title : 'Cats',
          style : "background-image : url('https://cdn.pixabay.com/photo/2018/08/06/22/35/siamese-cat-3588544__340.jpg')",
          description : `
<p>Proud owner of 2 siamese kittens.<p>
<p>Should I mention they are twins?</p>
`
        },
        {
          title : 'Snowboarding',
          style : "background-image : url('https://cdn.pixabay.com/photo/2018/02/23/17/56/snowboarding-3176182_960_720.jpg')",
          description : `
<p>Snowboarding is my passion!</p>
<p>Waiting for the snow every year.</p>
`
        },
      ]
    }
  },
  methods: {
    login() {
      console.info('login()')
      if (this.User.name.length > 3) {
        this.showGreeting = true
        this.User.haveBeenTryingToLogin = true
        if (Users.indexOf(this.User.name) > - 1) {
          this.User.loggedIn = true
        }
      }
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
    }
  }
}
</script>

