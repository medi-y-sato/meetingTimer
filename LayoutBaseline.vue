<template>
  <v-app id="inspire">
    <v-toolbar color="indigo" dark fixed app>
      <v-toolbar-title>会議タイマー</v-toolbar-title>
    </v-toolbar>
    <v-content>
      <v-container fluid fill-height>
        <v-layout justify-center align-center>
          <MeetingTimer></MeetingTimer>
        </v-layout>
      </v-container>
    </v-content>
    <v-footer color="indigo" app>
      <span class="white--text">mediba, inc.</span>
    </v-footer>
  </v-app>
</template>˝

<script lang="ts">
import MeetingTimer from "./MeetingTimer.vue";

export default {
  components: {
    MeetingTimer
  },
  data() {
    return {
      drawer: null
    };
  },
  props: {
    source: String
  }
};
</script>