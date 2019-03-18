<template>
    <div class="container"> 
          <div></div>
          <div>Poniedziałek</div>
          <div>Wtorek</div>
          <div>Środa</div>
          <div>Czwartek</div>
          <div>Piątek</div>
          <div>Sobota</div>
          <div>Niedziela</div>
          <div>Śniadanie</div>
          <div>jajecznica</div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div>Obiad</div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div>Kolacja</div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>         
      </div>
</template>

<script>
export default
{
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

.container div{
    border:1px solid black;
    padding:20px;
    text-align: center;
}


</style>
