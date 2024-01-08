<script setup lang="ts"></script>
<template>
  <div class="pb-8 pt-8">
    <p class="text-black josefin text-[45px] lg:ml-[45px] text-center">
      TiK•TaK
    </p>
    <div class="flex justify-center lg:gap-16 gap-4 mt-6">
      <img src="../assets/img/discord.svg" />
      <img src="../assets/img/insta.svg" />
      <img src="../assets/img/tiktok.svg" />
      <img src="../assets/img/twitch.svg" />
      <img src="../assets/img/twitter.svg" />
    </div>
    <div class="flex justify-center">
      <div class="ligne_footer mt-6 mb-6"></div>
    </div>
    <div class="flex justify-evenly lg:gap-16 ml-2 mr-2 lg:ml-0 lg:mr-2">
      <p class="font-montserrat font-semibold">Politique de confidentialité</p>
      <p class="font-montserrat font-semibold">
        @2024 TikTak. All rights reserved
      </p>
    </div>
  </div>
</template>
<style>
.josefin {
  font-family: josefin-sans, sans-serif;
  font-weight: 700;
  font-style: normal;
}

.ligne_footer {
  height: 3px;
  width: 800px;
  background-color: black;
}

@media screen and (max-width: 910px) {
  .ligne_footer {
    height: 3px;
    width: 300px;
    background-color: black;
  }
}
</style>
