/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %>
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue'
import App from './app.vue'

class Errors {
  constructor() {
    this.errors = {}
  }
  get(field) {
    if(this.errors[field]) {
      return this.errors[field][0]
    }
  }
  record(errors) {
    this.errors = errors
  }
  clear(field) {
    if(field) {
      delete this.errors[field]
    } else {
      this.errors = {}
    }
  }
  any() {
    return Object.keys(this.errors).length > 0
  }
}

class Form {
  constructor(data) {
    this.originalData = data

    for(let field in data) {
      this[field] = data[field]
    }

    this.errors = new Errors()
  }
  reset() {
    for(let field in originalData) {
      this[field] = ''
    }
  }
  submit(requestType, url) {
    axios[requestType](url, this.originalData)
         .then(this.onSuccess.bind(this))
         .catch(this.onFail.bind(this))
  }
  onSuccess(response) {
    debugger
    alert('success!')
    this.errors.clear()
    this.reset()
  }
  onFail(error) {
    this.errors.record(error.response.data)
  }
}

document.addEventListener('DOMContentLoaded', () => {
  // document.body.appendChild(document.createElement('hello'))
  const app = new Vue({
    el: '#app',
    // el: '#hello-vue', // 'hello'
    // template: '<App/>',
    // components: { App },
    data: {
      skills: [],
      form: new Form({
        name: '',
        description: '',
      })
    },
    methods: {
      onSubmit() {
        this.form.submit('post', 'projects')
      }
    },
    mounted() {
      // axios.get('/data').then(response => this.skills = response.data)
    }
  })

  // console.log(app)
})
