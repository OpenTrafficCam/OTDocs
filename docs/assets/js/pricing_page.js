alert("test")
const hoverTrigger = document.querySelector('.hover-trigger');

// Get the list container
const listContainer = document.querySelector('.list-container');

// Hide the list container when mouse leaves
hoverTrigger.addEventListener('mouseout', () => {
  listContainer.style.display = 'none';
});
alert("test")