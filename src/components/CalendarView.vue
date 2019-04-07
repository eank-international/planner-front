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
export default
{
    data: () =>
    ({
        days:
        [
            "poniedziałek",
            "wtorek",
            "środa",
            "czwartek",
            "piątek",
            "sobota",
            "niedziela",
        ],
        breakfasts:
        [
            "jajecznica #0",
            "jajecznica #1",
            "jajecznica #2",
            "jajecznica #3",
            "jajecznica #4",
            "jajecznica #5",
            "jajecznica #6",
        ],
        lunches:
        [
            "stek #0",
            "stek #1",
            "stek #2",
            "stek #3",
            "stek #4",
            "stek #5",
            "stek #6",
        ],
        dinners:
        [
            "sałatka #0",
            "sałatka #1",
            "sałatka #2",
            "sałatka #3",
            "sałatka #4",
            "sałatka #5",
            "sałatka #6",
        ],
    }),
    name: 'CalendarView',
    props:
    {
        msg: String,
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
