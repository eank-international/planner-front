<template>
    <div class="container"> 
          <div></div>
          <div v-for="day in days" class="day">
              {{ day }}
          </div>
          <div>Śniadanie</div>
          <div v-for="breakfast in breakfasts">
              <input type="text">
              {{ breakfast }}
          </div>
          <div>Obiad</div>
          <div v-for="lunch in lunches">
              <input type="text">
              {{ lunch }}
          </div>
          <div>Kolacja</div>
          <div v-for="dinner in dinners">
              <input type="text">
              {{ dinner }}
          </div>
      </div>
</template>

<script>
const extract_attribute = x => y => x.map(l => l[y]);

export default
{
    computed:
    {
        days()
        {
            return extract_attribute(this.daily_meal_plans)("day");
        },
        breakfasts()
        {
            return extract_attribute(this.daily_meal_plans)("breakfast");
        },
        lunches()
        {
            return extract_attribute(this.daily_meal_plans)("lunch");
        },
        dinners()
        {
            return extract_attribute(this.daily_meal_plans)("dinner");
        },
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
