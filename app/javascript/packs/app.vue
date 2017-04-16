<template>
  <div>
    <p>{{ message }}</p>
    <message>Hello there</message>
    <counter></counter>
  </div>
</template>

<script>
import Message from './components/message.vue'
import Counter from './components/counter.vue'

export default {
  data() {
    return {
      message: "Hello Vue!"
    }
  },
  components: { Message, Counter }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
