<script setup>
import { ref } from "vue";
const menuVisible = ref(true);
</script>
<template>
  <nav>
    <div class="bg-black flex justify-between">
      <div class="items-center">
        <router-link to="/">
          <h1 class="text-white josefin text-[45px] ml-[45px]">TiK•TaK</h1>
        </router-link>
      </div>
      <div
        class="text-white lg:flex gap-8 font-montserrat text-2xl font-bold items-center hidden"
      >
        <div class="hover:underline underline-offset-8 decoration-Blue-Light-0">
          <router-link to="/">
            <p class="">Accueil</p>
          </router-link>
        </div>
        <div class="hover:underline underline-offset-8 decoration-Blue-Light-0">
          <router-link to="/custom">
            <p>Customisation</p>
          </router-link>
        </div>
        <div
          class="mr-[45px] hover:underline underline-offset-8 decoration-Blue-Light-0"
        >
          <router-link to="/connexion">
            <p>S'inscrire / Se connecter</p>
          </router-link>
        </div>
        <!-- Bouton menu -->
      </div>
      <!-- Menu mobile -->
      <div class="flex items-center lg:hidden">
        <button @click="menuVisible = !menuVisible" class="py-5 px-2">
          <img src="../assets/img/menu.svg" alt="menu" class="" />
        </button>
      </div>
    </div>
    <div
      class="bg-Blue-Black-0 font-bold text-white lg:hidden pl-10"
      :class="{ hidden: menuVisible }"
    >
      <RouterLink class="font-montserrat block py-2 px-4" to="/"
        >Accueil</RouterLink
      >
      <RouterLink class="font-montserrat block py-2 px-4" to="/custom"
        >Customisation</RouterLink
      >
      <RouterLink class="font-montserrat block py-2 px-4" to="/connexion"
        >S'inscrire / Se connecter</RouterLink
      >
    </div>
  </nav>
</template>
<style>
.josefin {
  font-family: josefin-sans, sans-serif;
  font-weight: 700;
  font-style: normal;
}
</style>
