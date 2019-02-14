<template>
  <section>
    <p>いま : {{ formatNowDate2Time }}</p>
    <p>かいぎおわらすじかん : {{ formatLimitDate2Time }}</p>
    <v-flex xs12 sm4 text-xs-center>
      <div>
        <v-btn large color="primary" @click="resetTimer()">STOP / RESET</v-btn>
      </div>
      <div>
        <v-btn large @click="startTimer(30)">30min</v-btn>
      </div>
      <div>
        <v-btn large @click="startTimer(60)">60min</v-btn>
      </div>
      <div>
        <v-btn large @click="startTimer(90)">90min</v-btn>
      </div>
      <div>
        <v-btn large @click="startTimer(120)">120min</v-btn>
      </div>
    </v-flex>
  </section>
</template>˝

<script lang="ts">
export default {
  data() {
    return {
      timer: "00-00-00",
      timerObj: null,
      timerDate: new Date(),
      currentDate: new Date()
    };
  },
  created: () => {
    this.resetTimer;
  },
  methods: {
    startTimer(meetingLength: number) {
      this.currentDate = new Date();
      this.timerDate = this.caliculateNear25sec(meetingLength);
      this.timerObj = setInterval(() => {
        this.checkTimeup();
      }, 1000);
    },
    resetTimer() {
      this.timerDate = this.caliculateNear25sec(25);
      clearInterval(this.timerObj);
      this.timeupAlert()
    },
    checkTimeup() {
      this.currentDate = new Date();
      if (new Date() > this.timerDate) {
        clearInterval(this.timerObj);
        this.resetTimer(25);
        this.timeupAlert();
      }
    },
    // 直近の(30分/0分)-5分を会議終了時刻とする
    caliculateNear25sec(meetingLength: number): Date {
      let nowDate: Date = new Date();
      const diffMiutes =
        nowDate.getMinutes() +
        meetingLength -
        ((nowDate.getMinutes() + meetingLength) % 30) -
        5;
      let timerDate: Date = new Date();
      timerDate.setSeconds(0);
      timerDate.setMinutes(diffMiutes);
      return timerDate;
    },
    timeupAlert() {
      navigator.vibrate(1000);
      console.log("vib 1000")
      setTimeout(()=>{
        navigator.vibrate(0)
      console.log("vib 0")
      },1000)
    }
  },
  computed: {
    formatLimitDate2Time() {
      const timeString: string = new Date(this.timerDate).toLocaleTimeString();
      return timeString;
    },
    formatNowDate2Time() {
      const timeString: string = new Date(
        this.currentDate
      ).toLocaleTimeString();
      return timeString;
    }
  }
};
</script>