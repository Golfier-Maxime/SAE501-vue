<template>
  <div ref="scene"></div>
</template>

<script>
import * as THREE from "three";

export default {
  data() {
    return {
      scene: null,
      camera: null,
      renderer: null,
      cube: null,
    };
  },
  mounted() {
    this.init();
    this.animate();
  },
  methods: {
    init() {
      // Créer une scène
      this.scene = new THREE.Scene();

      // Créer une caméra
      this.camera = new THREE.PerspectiveCamera(
        75,
        window.innerWidth / window.innerHeight,
        0.1,
        1000
      );
      this.camera.position.z = 5;

      // Créer un renderer
      this.renderer = new THREE.WebGLRenderer();
      this.renderer.setSize(1000, 600);

      // Ajouter le renderer au DOM
      this.$refs.scene.appendChild(this.renderer.domElement);

      // Ajouter un cube à la scène
      const geometry = new THREE.BoxGeometry(2, 2, 2); // Modifier les dimensions ici
      const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
      this.cube = new THREE.Mesh(geometry, material);
      this.scene.add(this.cube);
    },
    animate() {
      requestAnimationFrame(this.animate);

      // Faire des modifications ou animations ici
      this.cube.rotation.x += 0.01;
      this.cube.rotation.y += 0.01;

      // Rendre la scène
      this.renderer.render(this.scene, this.camera);
    },
  },
};
</script>

<style scoped>
/* Ajoutez des styles si nécessaire */
</style>
