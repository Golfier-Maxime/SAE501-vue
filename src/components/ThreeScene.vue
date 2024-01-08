<template>
  <div ref="scene"></div>
</template>

<script>
import * as THREE from "three";
import { ColladaLoader } from "three/addons/loaders/ColladaLoader.js";
import OrbitControls from "three-orbit-controls";

export default {
  data() {
    return {};
  },
  mounted() {
    this.init();
  },
  methods: {
    init() {
      // Create a scene
      const scene = new THREE.Scene();

      // Create a camera
      const camera = new THREE.PerspectiveCamera(
        75,
        window.innerWidth / window.innerHeight,
        0.1,
        1000
      );
      camera.position.z = 100;

      // Create a renderer
      const renderer = new THREE.WebGLRenderer();
      renderer.setSize(1300, 700);
      this.$refs.scene.appendChild(renderer.domElement);

      // Load the DAE model

      const loader = new ColladaLoader();
      loader.load("./models/montre.dae", (collada) => {
        const daeModel = collada.scene;

        const boitierRond = daeModel.getObjectByName("boitier_rond");
        boitierRond.material = new THREE.MeshBasicMaterial({ color: 0xff0000 });
        // Add the "boitier_rond" object to the scene
        scene.add(boitierRond);

        const aiguilleSecondes = daeModel.getObjectByName("aiguille_secondes");
        aiguilleSecondes.material = new THREE.MeshBasicMaterial({
          color: 0x00ff00,
        });
        // Add the "aiguille_secondes" object to the scene
        scene.add(aiguilleSecondes);

        const iBouton = daeModel.getObjectByName("bouton");
        iBouton.material = new THREE.MeshBasicMaterial({
          color: 0x00ff00,
        });
        // Add the "bouton" object to the scene
        scene.add(iBouton);

        const aiguilleHeures = daeModel.getObjectByName("aiguille_heures");
        aiguilleHeures.material = new THREE.MeshBasicMaterial({
          color: 0xf0f0f0,
        });
        // Add the "aiguille_heures" object to the scene
        scene.add(aiguilleHeures);

        const aiguilleMinutes = daeModel.getObjectByName("aiguille_minutes");
        aiguilleMinutes.material = new THREE.MeshBasicMaterial({
          color: 0x0f0f0f,
        });
        // Add the "aiguille_minutes" object to the scene
        scene.add(aiguilleMinutes);

        const iPierre = daeModel.getObjectByName("pierre");
        iPierre.material = new THREE.MeshBasicMaterial({
          color: 0x0000ff,
        });
        // Add the "pierre" object to the scene
        scene.add(iPierre);

        const iBracelet = daeModel.getObjectByName("bracelet");
        iBracelet.material = new THREE.MeshBasicMaterial({
          color: 0x00f0ff,
        });
        // Add the "bracelet" object to the scene
        scene.add(iBracelet);

        const iFermoir = daeModel.getObjectByName("fermoir");
        iFermoir.material = new THREE.MeshBasicMaterial({
          color: 0xf000ff,
        });
        // Add the "fermoir" object to the scene
        scene.add(iFermoir);
      });

      // Animation
      const animate = () => {
        requestAnimationFrame(animate);

        // Render the scene
        renderer.render(scene, camera);
      };

      // Start the animation
      animate();
    },
  },
};
</script>

<style scoped>
/* #scene {
  width: 1000px;
  height: 600px;
} */
</style>
