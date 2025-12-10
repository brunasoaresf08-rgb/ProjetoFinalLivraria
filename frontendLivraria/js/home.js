document.addEventListener("DOMContentLoaded", () => {
  
  const carousels = document.querySelectorAll(".carousel-container");

  carousels.forEach((carousel) => {
    const prevBtn = carousel.querySelector(".prev");
    const nextBtn = carousel.querySelector(".next");
    const track = carousel.querySelector(".carousel-track");
    const cards = track ? track.querySelectorAll(".card-book") : [];

   
    if (!track || cards.length === 0 || !prevBtn || !nextBtn) {
      return;
    }

   
    const getStep = () => {
      const firstCard = cards[0];

    
      const styles = window.getComputedStyle(track);
      const gap =
        parseInt(styles.columnGap || styles.gap || "0", 10) || 0;

      return firstCard.offsetWidth + gap;
    };

    prevBtn.addEventListener("click", () => {
      track.scrollBy({
        left: -getStep(),
        behavior: "smooth",
      });
    });

    nextBtn.addEventListener("click", () => {
      track.scrollBy({
        left: getStep(),
        behavior: "smooth",
      });
    });
  });
});
