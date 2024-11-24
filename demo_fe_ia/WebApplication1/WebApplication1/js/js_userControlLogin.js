//document.addEventListener("DOMContentLoaded", function () {
//    // Lấy URL hiện tại để xác định trang
//    let currentPage = window.location.pathname;
//    // console.log("Current page:", currentPage);

//    // Chọn nút tương ứng dựa trên trang hiện tại và đặt lớp 'active-btn'
//    if (currentPage.includes("Login.aspx")) {
//        document.querySelector('.fa-user').parentElement.classList.add('active-btn');
//    } else if (currentPage.includes("demo.aspx")) {
//        document.querySelector('.fa-briefcase').parentElement.classList.add('active-btn');
//    } else if (currentPage.includes("Admin_Login.aspx")) {
//        document.querySelector('.fa-user-gear').parentElement.classList.add('active-btn');
//    }

//});

document.addEventListener("DOMContentLoaded", function () {
    let currentPage = window.location.pathname.toLowerCase();
    console.log("Current page:", currentPage);

    let userIcon = document.querySelector('.fa-user');
    let briefcaseIcon = document.querySelector('.fa-briefcase');
    let userGearIcon = document.querySelector('.fa-user-gear');

    console.log("User icon:", userIcon);
    console.log("Briefcase icon:", briefcaseIcon);
    console.log("User gear icon:", userGearIcon);

    if (currentPage.includes("login.aspx") && userIcon) {
        userIcon.parentElement.classList.add('active-btn');
    } else if (currentPage.includes("demo.aspx") && briefcaseIcon) {
        briefcaseIcon.parentElement.classList.add('active-btn');
    } else if (currentPage.includes("admin_login.aspx") && userGearIcon) {
        userGearIcon.parentElement.classList.add('active-btn');
    }
});


//window.onload = function () {
    //document.addEventListener("DOMContentLoaded", function () {
    //    // Lấy URL hiện tại để xác định trang
    //    let currentPage = window.location.pathname.toLowerCase(); // Chuyển URL về chữ thường

    //    // In ra URL để kiểm tra
    //    console.log("Current page:", currentPage);

    //    // Chọn nút tương ứng dựa trên trang hiện tại và đặt lớp 'active-btn'
    //    if (currentPage.includes("login.aspx")) {
    //        document.querySelector('.fa-user')?.parentElement.classList.add('active-btn');
    //    } else if (currentPage.includes("demo.aspx")) {
    //        document.querySelector('.fa-briefcase')?.parentElement.classList.add('active-btn');
    //    } else if (currentPage.includes("admin_login.aspx")) {
    //        document.querySelector('.fa-users-gear')?.parentElement.classList.add('active-btn');
    //    }
    //});
//};
