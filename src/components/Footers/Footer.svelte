<script>
  // make dynamic date to be added to footer
  let date = new Date().getFullYear();
</script>

<footer class="relative bg-blueGray-200 pt-8 pb-6">
  <div
    class="bottom-auto top-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden -mt-20 h-20"
    style="transform: translateZ(0);"
  >
    <svg
      class="absolute bottom-0 overflow-hidden"
      xmlns="http://www.w3.org/2000/svg"
      preserveAspectRatio="none"
      version="1.1"
      viewBox="0 0 2560 100"
      x="0"
      y="0"
    >
      <polygon
        class="text-blueGray-200 fill-current"
        points="2560 0 2560 100 0 100"
      ></polygon>
    </svg>
  </div>
  <div class="container mx-auto px-4">
    <div class="flex flex-wrap text-center lg:text-left">
      <div class="w-full lg:w-6/12 px-4">
        <h4 class="text-3xl font-semibold">Dugi niz godina odrzavanja!</h4>
        <h5 class="text-lg mt-0 mb-2 text-blueGray-600">
        Zapratite nas
        </h5>
        <div class="mt-6 lg:mb-0 mb-6">
          <button
            class="bg-white text-lightBlue-400 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2"
            type="button"
          >
            <i class="fab fa-twitter"></i>
          </button>
          <button
            class="bg-white text-lightBlue-600 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2"
            type="button"
          >
            <i class="fab fa-facebook-square"></i>
          </button>
          <button
            class="bg-white text-pink-400 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2"
            type="button"
          >
            <i class="fab fa-dribbble"></i>
          </button>
          <button
            class="bg-white text-blueGray-800 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2"
            type="button"
          >
            <i class="fab fa-github"></i>
          </button>
        </div>
      </div>
     
  </div>
</footer>
