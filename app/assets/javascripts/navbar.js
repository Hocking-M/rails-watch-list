document.addEventListener("DOMContentLoaded", function() {
  const navbarToggler = document.querySelector(".navbar-toggler");
  const navbarCollapse = document.querySelector(".navbar-collapse");

  navbarToggler.addEventListener("click", () => {
    navbarCollapse.classList.toggle("show");
  });

  window.addEventListener("resize", () => {
    if (window.innerWidth >= 992 && navbarCollapse.classList.contains("show")) {
      navbarCollapse.classList.remove("show");
    }
  });
});
