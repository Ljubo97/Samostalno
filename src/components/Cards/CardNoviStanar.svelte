<script lang="ts">


    export let statSubtitle = "KREIRAJ NOVOG STANARA";
    export let statTitle = "Odaberite naziv ulaza u koji zelite da kreirate stanara";
    // The value must match one of these strings
    // "up" or "down"
    // can be any of the text color utilities
    // from tailwindcss
    export let statPercentColor = "text-emerald-500";
    
    export let statDescripiron = "Popunite formu za novog stanara";
    export let statDescripiron2 = "Klikom na dugme +Kreiraj ulaz dodajte stanara u odabrani ulaz";

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

    
       
      <form class="forma" action="/dodajstanara.php" method="POST">
        <div class="form-group-sm">
            <div class="form-group-sm">
          
                <select name="odaberizgradu" class="form-control" id="ulaz" placeholder="Naziv ulaza" required>
                  <option value="">Izaberi ulaz</option>
                  <option value="ulaz1">ulaz1</option><option value="SPC 86">SPC 86</option><option value="Ustanova">Ustanova</option><option value="Peta">Peta</option><option value="Zgrada Broj 6">Zgrada Broj 6</option><option value="Zgrada broj 1">Zgrada broj 1</option><option value="Ilije Plamenca 103 ulaz 6">Ilije Plamenca 103 ulaz 6</option>        </select>
              </div>

          <label for="formGroupExampleInput">Ime i prezime stanara</label>
          <input name="iipstanara" type="text" class="form-control" id="formGroupExampleInput" placeholder="Marko Marković" required="">
        </div>
  
  
        <div class="form-outline">
          <label class="form-label" for="typeNumber">PD broj</label>
          <input name="PDbroj" type="number" id="typeNumber" class="form-control" placeholder="PD" required="">
        </div>
  
        <div class="form-outline">
          <label class="form-label" for="typeNumber">Broj stana</label>
          <input name="brojstana" type="number" id="typeNumber" class="form-control" placeholder="Broj stana" required="">
  
        </div>
              <div class="form-outline">
          <label class="form-label" for="typeNumber">Sprat</label>
          <select name="brojsprata" class="form-control" id="cijena" required="">
            <option value="-5">-5</option><option value="-4">-4</option><option value="-3">-3</option><option value="-2">-2</option><option value="-1">-1</option><option value="0">0</option><option value="Podrum">Podrum</option><option value="Prizemlje">Prizemlje</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="Potkrovlje">Potkrovlje</option>
          </select>
        </div>
  
        <div class="form-outline">
          <label class="form-label" for="typeNumber">Kvadratura stana</label>
          <input name="kvadraturastana" type="number" id="typeNumber" class="form-control" placeholder="Kvadratura stana" required="">
        </div>
  
        <div class="form-group-sm">
          <label for="exampleFormControlSelect1">Odaberite prostor</label>
          <select name="prostor" class="form-control" id="cijena" required="">
            <option value="">Prostor</option>
            <option value="stambeni">Stambeni prostor</option>
            <option value="garaza">Garaza</option>
            <option value="nestambeni">Nestambeni prostor</option>
  
          </select>
        </div>
  
        <div class="form-group-sm">
          <label for="exampleFormControlSelect1">Cijena po metru kvadratnom</label>
          <select name="cijenapom2" class="form-control" id="cijena" required="">
            <option>Cijena</option>
            <option>0.10</option>
            <option>0.15</option>
            <option>0.20</option>
            <option>0.25</option>
            <option>0.30</option>
            <option>0.35</option>
            <option>0.40</option>
            <option>0.45</option>
            <option>0.50</option>
            <option>0.55</option>
  
          </select>
        </div>
  
        <div class="form-outline">
          <label class="form-label" for="typeNumber">Proslogodisnji dug</label>
          <input name="proslogodisnjidug" type="number" step="any" id="typeNumber" class="form-control" placeholder="Proslogodisnji dug" required="">
        </div>
        <!--           <div class="form-outline">
              <label class="form-label" for="typeNumber">Prethodni dug</label>
              <input type="number" id="typeNumber" class="form-control"  placeholder="Prethodni dug"/>
            </div>
  
   -->
   
       
        <div class="form-outline">
          <label class="form-label" for="typeNumber">Komentar</label>
          <textarea style="min-height:50px;" name="komentar" class="form-control" placeholder="Komentar"></textarea>
        </div>
  <br>
  <button style="background-color: green;color:white" name="ulaz" type="submit" class="btn btn-info">+Kreiraj stanara u odabrani ulaz</button>

        <br>
  
</form>
      <p class="text-sm text-blueGray-400 mt-4">
        
      
        
        <span class="whitespace-nowrap">{statDescripiron}</span>
      </p>
      <p class="text-sm text-blueGray-400 mt-4">
       
        
        
        <span class="whitespace-nowrap">{statDescripiron2}</span> </p>
    </div>
  </div>
  