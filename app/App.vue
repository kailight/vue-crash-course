<template>
<div id="app">

  <intro :User="User" :Users="Users" :Admin="Admin"></intro>
  <content2 :User="User" :Users="Users" :Skills="Skills"></content2>
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
let Users = ['neo66','Mark','Ivan']

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
      password : true,
      Admin : {
        name : 'Alexander',
      },
      User : {
        haveBeenTryingToLogin : false,
        loggedIn : false,
        name : '',
        agreesToConditions : false
      },
      Users : Users,
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
  }
}
</script>

