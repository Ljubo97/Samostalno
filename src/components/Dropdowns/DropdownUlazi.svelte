<script>

    import { link } from "svelte-routing";
    // library for creating dropdown menu appear on click
    import { createPopper } from "@popperjs/core";
  
    // core components
    let dropdownPopoverShow = false;
  
    let btnDropdownRef;
    let popoverDropdownRef;
  
    const toggleDropdown = (event) => {
      event.preventDefault();
      if (dropdownPopoverShow) {
        dropdownPopoverShow = false;
      } else {
        dropdownPopoverShow = true;
        createPopper(btnDropdownRef, popoverDropdownRef, {
          placement: "bottom-start",
        });
      }
    };

    
  </script>
  
    <a
      class="hover:text-blueGray-500 text-blueGray-700 px-3 py-2 flex items-center text-xs uppercase font-bold"
      href="#pablo"
      bind:this="{btnDropdownRef}"
      on:click="{toggleDropdown}"
    >
      Upravljaj ulazima
    </a>
    <div
      bind:this="{popoverDropdownRef}"
      class="bg-white text-base z-50 float-left py-2 list-none text-left rounded shadow-lg min-w-48 {dropdownPopoverShow ? 'block':'hidden'}"
    >
      <span
        class="text-sm pt-2 pb-0 px-4 font-bold block w-full whitespace-nowrap bg-transparent text-blueGray-400"
      >
        Upravljaj ulazima
      </span>
      <a
        use:link
        href="/admin/dodajulaz"
        class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
      >
        Dodaj novi Ulaz
      </a>
      <a
      use:link
      href="/admin/izmjeniulaz"
      class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
    >
      Izmjeni Ulaz
    </a>
    <a
    use:link
    href="/admin/obrisiulaz"
    class="text-sm py-2 px-4 font-normal block w-full whitespace-nowrap bg-transparent text-blueGray-700"
  >
    Obrisi Ulaz
  </a>
     

  </div>
  