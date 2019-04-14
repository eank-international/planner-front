<template>
  <div id="app">
    <CalendarView v-bind:daily_meal_plans=daily_meal_plans />
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
    data: () =>
    ({
        daily_meal_plans:
        [
            {
                day: "poniedziałek",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
            {
                day: "wtorek",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
            {
                day: "środa",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
            {
                day: "czwartek",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
            {
                day: "piątek",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
            {
                day: "sobota",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
            {
                day: "niedziela",
                breakfast: "aaa",
                lunch: "bbb",
                dinner: "ccc",
            },
        ],
    }),
}
</script>
