// Lấy các phần tử trong HTML
const openPopupButton = document.getElementById('Button1');
const popup = document.getElementById('popup');
const closePopupButton = document.getElementById('closePopup');


function showPopup(button) {
    // Lấy giá trị từ thuộc tính data-id
    const idKhachHang = button.getAttribute("data-id");
}
// Khi nhấn vào nút mở popup
function showPopup() {
    var popup = document.getElementById('popup');
    popup.style.display = 'flex'; // Hiển thị popup
}

// Hiển thị thông tin tương ứng trong popup (giả sử có các phần tử chứa thông tin)
const detailContainer = popup.querySelector('.info-container');


// Khi nhấn vào nút đóng
closePopupButton.onclick = function () {
    const popup = document.getElementById('popup');
    popup.style.display = 'none';  // Ẩn popup
}

// Khi nhấn bên ngoài cửa sổ popup để đóng
window.onclick = function (event) {
    if (event.target === popup) {
        popup.style.display = 'none';  // Ẩn popup khi nhấn ngoài cửa sổ popup
    }
}