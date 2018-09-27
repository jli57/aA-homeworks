document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  // --- your code here!
  const listContainer = document.getElementsByClassName("list-container")[0];
  // console.log(listContainer.children);
  const formEl = listContainer.getElementsByTagName("form")[0];
  formEl.addEventListener("submit", event => {
    event.preventDefault();
    const input = document.getElementsByClassName("favorite-input")[0];
    const text = input.value;
    const list = document.getElementById("sf-places");
    const newItem = document.createElement("li");
    newItem.textContent = text;
    list.appendChild(newItem);
    input.value = "";
  });


  // adding new photos
  const toggleButton = document.getElementsByClassName("photo-show-button")[0];
  const photoContainer = document.getElementsByClassName("photo-form-container")[0];

  toggleButton.addEventListener("click", event => {
    if ( photoContainer.classList.length > 1 ) {
      photoContainer.classList.remove("hidden");
    } else {
      photoContainer.classList.add("hidden");
    }
  });

  const pictureForm = photoContainer.getElementsByTagName("form")[0];
  console.log(pictureForm);
  pictureForm.addEventListener("submit", event => {
    event.preventDefault();
    const input = pictureForm.getElementsByClassName("photo-url-input")[0];
    const url = input.value;
    const photoList = document.getElementsByClassName("dog-photos")[0];
    const list = document.createElement("li");
    const img = document.createElement("img");
    img.setAttribute("src", url);
    photoList.appendChild(list);
    list.appendChild(img);
    input.value = "";
  });
  // --- your code here!

// https://i.pinimg.com/736x/37/23/8a/37238a3045ab66a7e08f3eb572bbdb1e--beach-puppy-take-to.jpg

});
