const body = document.querySelector("body"),
    sidebar = body.querySelector(".sidebar"),
    toggle = body.querySelector(".toggle"),
    modeSwitch = body.querySelector(".toggle-switch"),
    modeText = body.querySelector(".mode-text");
sunIcon = body.querySelector(".sun"),
    moonIcon = body.querySelector(".moon");

toggle.addEventListener("click", () => {
    sidebar.classList.toggle("close");
});

modeSwitch.addEventListener("click", () => {
    body.classList.toggle("light");

    if (body.classList.contains("light")) {
        modeText.innerText = "Dark mode"
        sunIcon.style.opacity = "0"; // Ẩn icon Sun
        moonIcon.style.opacity = "1"; // Hiện icon Moon
    }
    else {
        modeText.innerText = "Light mode"
        sunIcon.style.opacity = "1"; // Hiện icon Sun
        moonIcon.style.opacity = "0"; // Ẩn icon Moon
    }
});

//document.addEventListener('show.bs.modal', function () {
//    const backdrop = document.querySelector('.modal-backdrop');
//    if (backdrop) {
//        backdrop.style.zIndex = '-1';
//    }
//});

// document.addEventListener("DOMContentLoaded", () => {
//     const body = document.querySelector("body");
//     const modeSwitch = document.querySelector(".toggle-switch");

//     // Toggle dark mode
//     modeSwitch.addEventListener("click", () => {
//         body.classList.toggle("light");
//     });
// });

