<template>
  <div>
    <h1>Inscription</h1>
    <form @submit.prevent="inscrire">
      <label>Nom d'utilisateur:</label>
      <input v-model="inscriptionNom" required />

      <label>Mot de passe:</label>
      <input type="password" v-model="inscriptionpassword" required />

      <button type="submit">S'inscrire</button>
    </form>

    <h1>Connexion</h1>
    <form @submit.prevent="connecter">
      <label>Nom d'utilisateur:</label>
      <input v-model="connexionNom" required />

      <label>Mot de passe:</label>
      <input type="password" v-model="connexionpassword" required />

      <button type="submit">Se connecter</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      inscriptionNom: "",
      inscriptionpassword: "",
      connexionNom: "",
      connexionpassword: "",
    };
  },
  methods: {
    inscrire() {
      axios
        .post("http://localhost:3000/inscription", {
          email: this.inscriptionNom,
          password: this.inscriptionpassword,
        })
        .then((response) => {
          console.log(
            "Inscription réussie, ID utilisateur:",
            response.data.userID
          );
        })
        .catch((error) => {
          console.error("Erreur lors de l'inscription", error);
        });
    },
    connecter() {
      axios
        .post("http://localhost:3000/connexion", {
          email: this.connexionNom,
          password: this.connexionpassword,
        })
        .then((response) => {
          console.log(
            "Connexion réussie, ID utilisateur:",
            response.data.userID
          );
          // Stocker le token dans le stockage local
          localStorage.setItem("token", response.data.token);
        })
        .catch((error) => {
          console.error("Erreur lors de la connexion", error);
        });
    },
  },
};
</script>
