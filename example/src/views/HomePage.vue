<template>
  <ion-page>
    <ion-header :translucent="true">
      <ion-toolbar>
        <ion-title>Example</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content :fullscreen="true" class="ion-padding">

      <ion-input label="Input:" v-model="inputValue" placeholder="Enter text"></ion-input>
      <ion-button @click="testPlugin">Test Plugin</ion-button>
      <p>Result: {{ result }}</p>
      
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import { IonContent, IonHeader, IonPage, IonTitle, IonToolbar, IonLabel, IonInput, IonButton, IonToggle, IonList, IonItem, IonAccordionGroup, IonAccordion } from '@ionic/vue';
import { ref } from 'vue';
import { RecorderEngine } from '@xenixcom/capacitor-plugin-audio-recorder-engine';

const inputValue = ref('Hello World')
const result = ref('')

const testPlugin = async () => {
  const res = await RecorderEngine.echo({ value: inputValue.value })
  result.value = res.value
}

</script>

<style scoped></style>
