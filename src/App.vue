<template>
  <div id="app">
    <CalendarView msg="Eank International is the best!"/>
  </div>
</template>

<script>
import CalendarView from './components/CalendarView.vue'

export default 
{
    name: 'app',
    components:
    {
        CalendarView,
    },
}
</script>
