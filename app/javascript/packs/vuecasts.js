/* eslint no-console: 0 */

import Vue from 'vue'

$(() => {
  Vue.component('progress-view', {
    data() {
      return { completionRate: 0 }
    }
  })

  new Vue({
    el: '#single-use'
  })
})
