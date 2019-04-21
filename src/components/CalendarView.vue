<template>
    <div class="container"> 
          <div></div>
          <div v-for="day in days" class="day">
              {{ day.value }}
          </div>

          <!-- TODO: Extract components -->
          <div>Śniadanie</div>
          <div v-for="breakfast in breakfasts">
              <input @input="$emit('update:meal', {index: breakfast.index, group: breakfast.group, value: $event.target.value})" v-bind:value=breakfast.value type="text">
          </div>

          <div>Obiad</div>
          <div v-for="lunch in lunches">
              <input @input="$emit('update:meal', {index: lunch.index, group: lunch.group, value: $event.target.value})" v-bind:value=lunch.value type="text">
          </div>

          <div>Kolacja</div>
          <div v-for="dinner in dinners">
              <input @input="$emit('update:meal', {index: dinner.index, group: dinner.group, value: $event.target.value})" v-bind:value=dinner.value type="text">
          </div>
      </div>
</template>

<script>
const extract_with_location = (plans, label) =>
{
    return plans.map((plan, index) => ({
        index,
        group: label,
        value: plan[label],
    }))
}

export default
{
    computed: {
        days: function(){ return extract_with_location(this.daily_meal_plans, "day")},
        breakfasts: function(){ return extract_with_location(this.daily_meal_plans, "breakfast")},
        lunches: function(){ return extract_with_location(this.daily_meal_plans, "lunch")},
        dinners: function(){ return extract_with_location(this.daily_meal_plans, "dinner")},
    },
    name: 'CalendarView',
    props:
    {
        daily_meal_plans: Array,
    },
}
</script>

<style scoped>
.container{
    display: grid;
    grid-template-columns: repeat(8,auto);
    grid-template-rows: repeat(4, auto);
    border: 1px solid black;
    
}

.day {
    text-transform: capitalize;
}

.container div{
    border:1px solid black;
    padding:20px;
    text-align: center;
}

input {
    width: 100%;
}
</style>
