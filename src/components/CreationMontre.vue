<template>
  <div class="mx-4 my-4">
    <h1 class="m-5 font-bold text-3xl">Creer votre montre</h1>

    <form @submit.prevent="addWatch" class="flex gap-3 mx-5">
      <!-- Champ pour le boitier -->
      <label for="BoitierID" class="self-center text-lg">Boitier :</label>
      <select
        v-model="newBoitierID"
        required
        class="border-black border-2 px-2 py-1 mx-2 my-1 rounded-lg"
      >
        <option
          v-for="boitier in boitiers"
          :key="boitier.boitierID"
          :value="boitier.boitierID"
        >
          {{ boitier.texture }}
        </option>
      </select>

      <br />

      <!-- Champ pour la pierre -->
      <label for="PierreID" class="self-center text-lg">Pierre :</label>
      <select
        v-model="newPierreID"
        required
        class="border-black border-2 px-2 py-1 mx-2 my-1 rounded-lg"
      >
        <option
          v-for="pierre in pierres"
          :key="pierre.pierreID"
          :value="pierre.pierreID"
        >
          {{ pierre.nom }}
        </option>
      </select>

      <br />

      <!-- Champ pour le bracelet -->
      <label for="BraceletID" class="self-center text-lg">Bracelet :</label>
      <select
        v-model="newBraceletID"
        required
        class="border-black border-2 px-2 py-1 mx-2 my-1 rounded-lg"
      >
        <option
          v-for="bracelet in bracelets"
          :key="bracelet.braceletID"
          :value="bracelet.braceletID"
        >
          {{ bracelet.texture }}
        </option>
      </select>

      <br />

      <button
        type="submit"
        class="border-black border-2 px-2 py-1 mx-2 my-1 rounded-lg text-lg"
      >
        Creer la montre
      </button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      newBoitierID: null,
      newPierreID: null,
      newBraceletID: null,
      boitiers: [],
      pierres: [],
      bracelets: [],
    };
  },
  mounted() {
    // Récupérer la liste des boîtiers
    axios
      .get("http://localhost:3000/boitier")
      .then((response) => {
        this.boitiers = response.data;
      })
      .catch((error) => {
        console.error("Erreur lors de la récupération des boîtiers", error);
      });
    // Récupérer la liste des pierres
    axios
      .get("http://localhost:3000/pierre")
      .then((response) => {
        this.pierres = response.data;
      })
      .catch((error) => {
        console.error("Erreur lors de la récupération des pierres", error);
      });
    // Récupérer la liste des bracelets
    axios
      .get("http://localhost:3000/bracelet")
      .then((response) => {
        this.bracelets = response.data;
      })
      .catch((error) => {
        console.error("Erreur lors de la récupération des bracelets", error);
      });
  },
  methods: {
    addWatch() {
      axios
        .post("http://localhost:3000/montre/ajout", {
          BoitierID: this.newBoitierID,
          PierreID: this.newPierreID,
          BraceletID: this.newBraceletID,
        })
        .then((response) => {
          console.log(response.data.message);
          // Rediriger l'utilisateur vers la page des montres qu'il a configuré après l'ajout réussi
          this.$router.push("/montrelist");
        })
        .catch((error) => {
          console.error(
            "Erreur lors de l'ajout de la montre",
            error.response.data.error
          );
        });
    },
  },
};
</script>
