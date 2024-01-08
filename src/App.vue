<script setup>
import { RouterLink, RouterView } from "vue-router";
import headerVue from "@/components/Header.vue";
import footerVue from "@/components/Footer.vue";
</script>

<template>
  <headerVue></headerVue>
  <div>
    <RouterView />
  </div>
  <footerVue></footerVue>
</template>

<style></style>

<script></script>
