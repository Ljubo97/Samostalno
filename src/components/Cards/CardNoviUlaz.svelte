<script lang="ts">

export let imeUlaza=""
 let prikazi(){
    console.log(imeUlaza)
}
    export let statSubtitle = "KREIRAJ NOVI ULAZ";
    export let statTitle = "NAZIV ULAZA";
    // The value must match one of these strings
    // "up" or "down"
    // can be any of the text color utilities
    // from tailwindcss
    export let statPercentColor = "text-emerald-500";
    
    export let statDescripiron = "Popunite formu za novi ulaz kako bi kreirali ulaz";
    export let statDescripiron2 = "Klikom na dugme +Kreiraj ulaz dodajte ulaz";

    export let statIconName = "far fa-edit";
    // can be any of the background color utilities
    // from tailwindcss
    export let statIconColor = "bg-purple-500";
  </script>
  
  <div
    class="relative flex flex-col min-w-0 break-words bg-white rounded mb-6 xl:mb-0 shadow-lg"
  >
    <div class="flex-auto p-4">
      <div class="flex flex-wrap">
        <div class="relative w-full pr-4 max-w-full flex-grow flex-1">
          <h5 class="text-blueGray-400 uppercase font-bold text-xs">
            {statSubtitle}
          </h5>
          <span class="font-semibold text-xl text-blueGray-700">
            {statTitle}
          </span>
      
        </div>
        <div class="relative w-auto pl-4 flex-initial">
          <div
            class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 shadow-lg rounded-full {statIconColor}"
          >
            <i class="{statIconName}"></i>
          </div>
        </div>
      </div>
      <form action="">
      <input bind:value={imeUlaza}  type="text" name="NazivZg" placeholder="Ime Ulaza">
    <input  type="text" aria-label="pibOb" placeholder="PIB Ulaza">
    <input  type="text" aria-label="zrOb" placeholder="Ziro racun Ulaza">

    <input  type="text" aria-label="psOb" placeholder="Pocetno stanje Ulaza">
    <button on:mouseenter="prikazi" style="background-color: green;color:white;">+Kreiraj Ulaz</button>
</form>
      <p class="text-sm text-blueGray-400 mt-4">
        
      
        
        <span class="whitespace-nowrap">{statDescripiron}</span>
      </p>
      <p class="text-sm text-blueGray-400 mt-4">
       
        
        
        <span class="whitespace-nowrap">{statDescripiron2}</span> </p>
    </div>
  </div>
  