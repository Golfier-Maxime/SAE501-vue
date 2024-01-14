<template>
  <div>
    <h1 class="m-5 font-bold text-3xl">Liste des Montres</h1>
    <ul class="m-5 flex flex-wrap gap-3 justify-center">
      <li
        class="border w-[500px] my-2 p-3"
        v-for="watch in watches"
        :key="watch.montreID"
      >
        <p>Id de la montre : {{ watch.montreID }}</p>
        <p>boitier choisi : {{ watch.boitier_nom }}</p>
        <p>Texture du boitier : {{ watch.boitier_texture }}</p>
        <p>Pierre choisi : {{ watch.pierre_nom }}</p>
        <p>Texture du bracelet : {{ watch.bracelet_texture }}</p>
        <p>
          Prix de la montre :
          {{ watch.pierre_prix + watch.boitier_prix + watch.bracelet_prix }}€
        </p>

        <RouterLink
          :to="`/montrelist/${watch.montreID}`"
          class="border-black border-2 px-2 py-1 mx-2 my-1 rounded-lg"
          >Voir la montre</RouterLink
        >
        <button
          @click="deleteWatch(watch.montreID)"
          class="border-black border-2 px-2 py-1 mx-2 my-1 rounded-lg"
        >
          Supprimer la montre
        </button>
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      watches: [],
    };
  },
  mounted() {
    this.fetchWatches();
  },
  methods: {
    fetchWatches() {
      axios
        .get("http://localhost:3000/montres")
        .then((response) => {
          this.watches = response.data;
        })
        .catch((error) => {
          console.error("Error fetching watches:", error.message);
        });
    },
    deleteWatch(montreID) {
      // Make a DELETE request to your Express server endpoint
      axios
        .delete(`http://localhost:3000/montres/${montreID}`)
        .then(() => {
          // Remove the deleted watch from the local list
          this.watches = this.watches.filter(
            (watch) => watch.montreID !== montreID
          );
        })
        .catch((error) => {
          console.error("Error deleting watch:", error.message);
        });
    },
  },
};
</script>
