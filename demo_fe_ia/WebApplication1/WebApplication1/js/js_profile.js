
//điều khiển menu phụ
function showContent(contentId, button) {
    // Ẩn tất cả nội dung
    let contents = document.getElementsByClassName('menu-content');
    for (var i = 0; i < contents.length; i++) {
        contents[i].style.display = 'none';
    }
    // Hiển thị nội dung tương ứng với menu phụ được nhấn
    document.getElementById(contentId).style.display = 'block';

    // Loại bỏ lớp 'active-btn' từ tất cả các nút
    let buttons = document.querySelectorAll('.nav-item button');
    buttons.forEach(function (btn) {
        btn.classList.remove('active-btn');
    });

    // Thêm lớp 'active-btn' vào nút được nhấn
    button.classList.add('active-btn');
}

//đổi màu icon heart sau khi bấm
// function toggleColor() {
//     const button = document.getElementById("likeButton");
//     button.classList.toggle("clicked");
// }
// function toggleColor() {
//     const button = document.getElementById('likeButton');
//     button.classList.toggle('clicked');
// }

function toggleColor(button) {
    button.classList.toggle('clicked');
}

// Đảm bảo tất cả các nút được kích hoạt khi trang tải
window.onload = function () {
    var buttons = document.querySelectorAll('.likeButton');
    buttons.forEach(function (button) {
        button.addEventListener('click', function () {
            toggleColor(button);
        });
    });
};




// document.querySelector('.btn-more').addEventListener('click', function () {
//     document.querySelector('.short-text').style.whiteSpace = 'normal';
//     this.style.display = 'none';  // Ẩn nút "Xem thêm"
// });

// function toggleText() {
//     var label = document.querySelector('.short-text');
//     var button = document.querySelector('.btn-more');

//     if (label.style.display === '-webkit-box') {
//         label.style.display = 'block';
//         button.textContent = 'Thu gọn';
//     } else {
//         label.style.display = '-webkit-box';
//         button.textContent = 'Xem thêm';
//     }
// }








