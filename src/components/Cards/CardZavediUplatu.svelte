<script lang="ts">


    export let statSubtitle = "Zavedi uplatu";
    export let statTitle = "Odaberite ulaz i izvod kako bi zaveli uplatu za stanara";
    // The value must match one of these strings
    // "up" or "down"
    // can be any of the text color utilities
    // from tailwindcss
    export let statPercentColor = "text-emerald-500";
    
    export let statDescripiron = "Popunite formu za uplatu stanara";
    export let statDescripiron2 = "Klikom na dugme +Zavedi uplatu u odabrani izvod";

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
      <form id="adminforma" class="forma" action="/uplataizvoda2.php" method="POST">
        
        
        <br>
        
                  
        
                
        <div class="form-group-sm">
            <label for="exampleFormControlSelect1">Ulaz</label>
            <select name="izabranazgrada" class="form-control" id="zgrada" placeholder="Ime zgrade" required="">
              <option value="">Naziv ulaza</option>
              <option value="SPC 40">SPC 40</option><option value="SPC 86">SPC 86</option><option value="Ustanova">Ustanova</option><option value="Peta">Peta</option><option value="Zgrada Broj 6">Zgrada Broj 6</option><option value="Zgrada broj 1">Zgrada broj 1</option><option value="Ilije Plamenca 103 ulaz 6">Ilije Plamenca 103 ulaz 6</option>             
            </select>
          </div>
        
                  <div class="form-group-sm">
                    <label for="exampleFormControlSelect1">Broj izvoda</label>
                    <select name="brojizvoda" class="form-control" id="cijena" required>
                      <option value="">Izvodi</option>
                      <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="5">5</option><option value="6">6</option>            </select>
                  </div>
        
                  <div class="form-group-sm">
                    <label for="exampleFormControlSelect1">Stanar</label>
                    <select name="clanizvoda" class="form-control" id="stanar" required>
                      <option value="">Ime stanara</option>
                                  </select>
                  </div>
                  <div class="form-outline">
                    <label class="form-label" for="typeNumber">Uplata</label>
                    <input name="uplata" type="text" id="typeNumber" class="form-control" placeholder="Uplata u eurima" required="">
                    
                    
                  </div>
                  <br>
                 
                    <button  style="background-color: green;color:white;">+Kreiraj Ulaz</button>
            
             
                    <br>
                            
              </form>
      <p class="text-sm text-blueGray-400 mt-4">
        
      
        
        <span class="whitespace-nowrap">{statDescripiron}</span>
      </p>
      <p class="text-sm text-blueGray-400 mt-4">
       
        
        
        <span class="whitespace-nowrap">{statDescripiron2}</span> </p>
    </div>
  </div>
  