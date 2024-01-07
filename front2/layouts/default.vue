<template>
  <v-app dark>
    <v-navigation-drawer v-model="drawer" :mini-variant="miniVariant" :clipped="clipped" fixed app>
      <v-list>

        <v-list-item v-for="(item, i) in items" :key="i" :to="item.to" router exact>
          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
          </v-list-item-content>
        </v-list-item>

      </v-list>
    </v-navigation-drawer>

    <v-content>
      <router-view />
    </v-content>
  </v-app>
</template>

<script>
  export default {
    name: "LayoutDefault",
    data() {
      return {
        clipped: false,
        drawer: false,
        fixed: false,
        miniVariant: false,
        right: true,
        rightDrawer: false,
        title: 'TODO App'
      }
    },
    computed: {
      user() {
        return this.$store.state.auth.currentUser;
      },
      items() {
        if (this.user) {
          return [{
            icon: "mdi-apps",
            title: "TODOS",
            to: "/"
          },
          {
            icon: "mdi-chart-bubble",
            title: "MYPAGE",
            to: "/mypage"
          }
          ];
        } else {
          return [{
            icon: "mdi-apps",
            title: "LOGIN",
            to: "/login"
          },
          {
            icon: "mdi-chart-bubble",
            title: "SIGNUP",
            to: "/signup"
          }
          ];
        }
      }
    }
  }
</script>

<style>
  .container {
    margin: 0 auto;
    max-width: 800px;
  }
</style>z
