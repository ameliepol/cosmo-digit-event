const getCurrentPageLink = (domSelector) => {
  return document.querySelector(domSelector).querySelector(`a[href='${window.location.pathname}']`);
}
const addActiveNavbar = () => {
  const navbarLink = getCurrentPageLink("#navbarNav");
  if (navbarLink) {
    navbarLink.classList.add("active");
  }
}
