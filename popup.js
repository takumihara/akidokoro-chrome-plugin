document.addEventListener("DOMContentLoaded", function () {
  // Add event listeners to seat buttons
  const seatButtons = document.querySelectorAll(".seatButton");
  seatButtons.forEach((button) => {
    button.addEventListener("click", function () {
      const seatNumber = this.getAttribute("data-seat");
      chrome.tabs.query({ active: true, currentWindow: true }, function (tabs) {
        const tab = tabs[0];
        const url = new URL(tab.url);
        url.searchParams.set("selected-seat-number", seatNumber);
        chrome.tabs.update(tab.id, { url: url.toString() });
      });
    });
  });
});
