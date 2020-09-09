const displayCategories = () => {
  const arrow = document.getElementById('navbar-arrow-dropdown');
  const menu = document.getElementById('navbar-menu-dropdown');
  arrow.addEventListener("mouseover", (e) => {
    menu.classList.toggle('show');
  });
  menu.addEventListener("mouseleave", (e) => {
    menu.classList.remove('show');
  });
};

export {displayCategories};
