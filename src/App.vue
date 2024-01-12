<script setup>
import { RouterLink, RouterView } from "vue-router";
import headerVue from "@/components/Header.vue";
import footerVue from "@/components/Footer.vue";
import { useGlobalStore } from "../store/global.js";
import { onMounted } from "vue";

// Accéder au store global
const globalStore = useGlobalStore();

onMounted(() => {
  const token = localStorage.getItem("token");
  globalStore.setToken(JSON.parse(token));
});
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
