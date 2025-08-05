// Bootstrap Tooltip initialization for OpenTrafficCam
document.addEventListener("DOMContentLoaded", function () {
  var tooltipTriggerList = document.querySelectorAll(
    '[data-bs-toggle="tooltip"]',
  );
  tooltipTriggerList.forEach(function (tooltipTriggerEl) {
    new bootstrap.Tooltip(tooltipTriggerEl);
  });
});