document.addEventListener("DOMContentLoaded", function () {
    // Lấy URL hiện tại để xác định trang
    let currentPage = window.location.pathname;
    // console.log("Current page:", currentPage);

    // Chọn nút tương ứng dựa trên trang hiện tại và đặt lớp 'active-btn'
    if (currentPage.includes("Login.aspx")) {
        document.querySelector('.fa-user').parentElement.classList.add('active-btn');
    } else if (currentPage.includes("Profile.aspx")) {
        document.querySelector('.fa-briefcase').parentElement.classList.add('active-btn');
    } else if (currentPage.includes("Home.aspx")) {
        document.querySelector('.fa-user-gear').parentElement.classList.add('active-btn');
    }

});
