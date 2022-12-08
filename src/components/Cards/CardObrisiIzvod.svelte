<script lang="ts">


    export let statSubtitle = "Obrisi izvod";
    export let statTitle = "Obrisi izvod";
    // The value must match one of these strings
    // "up" or "down"
    // can be any of the text color utilities
    // from tailwindcss
    export let statPercentColor = "text-emerald-500";
    
    export let statDescripiron = "Odaberite ulaz za brisanje izvoda";
    export let statDescripiron2 = "Odaberite izvod za brisanje";

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
 <label for="">Izaberite ulaz u kojrem se nalazi izvod zelite da obrisete</label><br>
 <select name="ulazzabrisanjeizvoda" class="form-control" id="zgrada" placeholder="naziv ulaza" required>
    <option value="">Odaberitr ulaz u kojem se nalaziiIzbod za brisanje</option>
    <option value="SPC 40">SPC 40</option><option value="SPC 86">SPC 86</option><option value="Ustanova">Ustanova</option><option value="Peta">Peta</option><option value="Zgrada Broj 6">Zgrada Broj 6</option><option value="Zgrada broj 1">Zgrada broj 1</option><option value="Ilije Plamenca 103 ulaz 6">Ilije Plamenca 103 ulaz 6</option>        </select>
  <br>    
  <select name="izvodzabrisanje" class="form-control" id="zgrada" placeholder="naziv ulaza" required>
    <option value="">Odaberitr izvod za brisanje</option>
    <option value="SPC 40">SPC 40</option><option value="SPC 86">SPC 86</option><option value="Ustanova">Ustanova</option><option value="Peta">Peta</option><option value="Zgrada Broj 6">Zgrada Broj 6</option><option value="Zgrada broj 1">Zgrada broj 1</option><option value="Ilije Plamenca 103 ulaz 6">Ilije Plamenca 103 ulaz 6</option>        </select>
  <br>   
  <button  style="background-color: red;color:white;">-Obrisi izvod</button>
</form>
      <p class="text-sm text-blueGray-400 mt-4">
        
      
        
        <span class="whitespace-nowrap">{statDescripiron}</span>
      </p>
     
    </div>
  </div>
  