<script setup>
import ThreeSceneVue from "@/components/ThreeScene.vue";
import MontreVue from "@/components/Montre.vue";
</script>

<template>
  <div>
    <div></div>
    <div class="my-2 mx-2">
      <ThreeSceneVue></ThreeSceneVue>
    </div>
    <div>
      <!-- <MontreVue></MontreVue> -->
      <!-- <li v-for="watch in watches" :key="watch.montreID">
        {{ watch.boitier_nom }} - {{ watch.pierre_nom }} -
        {{ watch.bracelet_nom }}
      </li> -->
    </div>
  </div>
</template>
<!-- 
<script>
import axios from "axios";

export default {
  data() {
    return {
      watches: [],
    };
  },
  mounted() {
    // Make a GET request to your Express server endpoint
    axios
      .get("http://localhost:3000/montres")
      .then((response) => {
        this.watches = response.data;
        console.log(response.data);
      })
      .catch((error) => {
        console.error("Error fetching watches:", error.message);
      });
  },
};
</script> -->
