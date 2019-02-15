<template>
  <v-app id="inspire">
    <v-navigation-drawer v-model="drawer" fixed app>
      <v-list subheader three-line dense>

        <v-list-tile @click="openUrl('https://github.com/medi-y-sato/meetingTimer')">
          <v-list-tile-content>
            <v-icon>info</v-icon>
            <v-list-tile-title>Meeting Timer</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>

        <v-list-tile>
          <v-list-tile-content>
            <v-list-tile-title>Copyright</v-list-tile-title>
            <v-list-tile-sub-title>&copy; 2019 mediba. inc. /
              <a href="mailto:y-sato@mediba.jp">Yoshiaki Satoh</a>
            </v-list-tile-sub-title>
          </v-list-tile-content>
        </v-list-tile>

        <v-list-tile>
          <v-list-tile-content>
            <v-list-tile-title>Other Materials</v-list-tile-title>
            <v-list-tile-sub-title>
              Icons made by
              <a href="https://www.freepik.com/" title="Freepik">Freepik</a> from
              <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by
              <a
                href="http://creativecommons.org/licenses/by/3.0/"
                title="Creative Commons BY 3.0"
                target="_blank"
              >CC 3.0 BY</a>
            </v-list-tile-sub-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>

    <v-toolbar color="indigo" dark fixed app>
      <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
      <v-toolbar-title>会議タイマー</v-toolbar-title>
    </v-toolbar>
    <v-content>
      <v-container fluid>
        <v-layout justify-center align-center>
          <MeetingTimer></MeetingTimer>
        </v-layout>
      </v-container>
    </v-content>
    <v-footer color="indigo" app>
      <div class="white--text">mediba, inc.</div>
    </v-footer>
  </v-app>
</template>˝

<script lang="ts">
import MeetingTimer from "./MeetingTimer.vue";

export default {
  components: {
    MeetingTimer
  },
  data: () => ({
    drawer: null
  }),
  props: {
    source: String
  },
  methods:{
    openUrl(url){
      window.open(url,"_blank")
    }
  }
};
</script>