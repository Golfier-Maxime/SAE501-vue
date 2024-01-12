import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ConnexionView from '../views/Connexion.vue'
import PanierView from '../views/Panier.vue'
import MontreListView from '../views/MontreList.vue'
import MontreIDView from '../views/MontreIDView.vue'
import ModifyView from '../views/Modifier.vue'





const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/connexion',
      name: 'connexion',
      component: ConnexionView
    },
    {
      path: '/panier',
      name: 'panierid',
      component: PanierView
      
    },
    {
      path: '/montrelist',
      name: 'montrelist',
      component: MontreListView
    },
    {
      path: '/montrelist/:id',
      name: 'montreid',
      props: true,
      component: MontreIDView
    },
    {
      path: '/modify/:watchID',
      name: 'modify',
      component: ModifyView,
      props: true,
      
    },
  ]
})

export default router
