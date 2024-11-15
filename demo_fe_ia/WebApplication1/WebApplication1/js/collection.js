function showAllItems() {
    // lấy tất cả các khung ảnh ẩn
    const hiddenItems = document.querySelectorAll('.hidden');
    hiddenItems.forEach(item => {
        item.classList.remove('hiden');
    });
}

// Đợi 20 giây trước khi hiển thị lớp overlay
setTimeout(function () {
    document.getElementById("overlay-text").style.display = "block";
}, 10000); // 20000 milliseconds = 20 seconds
