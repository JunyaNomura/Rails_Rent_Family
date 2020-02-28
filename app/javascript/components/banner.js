import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rent a family member, for every ocation!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
