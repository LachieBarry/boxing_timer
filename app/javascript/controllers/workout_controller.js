const startTimers = () => {
  console.log("click!")
};


const start = document.getElementById("start");
start.addEventListener("click", (event) => {
  event.preventDefault();
  console.log(window.location.href);
  fetch(url)
  .then(response => response.json())
  .then((data) => {
    console.log(data);
  });

});
