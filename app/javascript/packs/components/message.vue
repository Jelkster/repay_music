<template>
  <div class="box">
    <p>
      <slot></slot>
    </p>
  </div>
</template>

<script>
export default {

}
</script>

<style>
  .box {
    background: gray;
    padding: 10px;
    border: 1px solid black;
  }
</style>