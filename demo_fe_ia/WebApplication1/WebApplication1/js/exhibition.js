
// Hàm chuyển sang section2 (Art Buy)
function showSection2() {
    document.getElementById("section1").style.display = "none"; // Ẩn phần Livestream
    document.getElementById("section2").style.display = "block"; // Hiện phần Art Buy
}

// Hàm chuyển sang section1 (Livestream)
function showSection1() {
    document.getElementById("section2").style.display = "none"; // Ẩn phần Art Buy
    document.getElementById("section1").style.display = "block"; // Hiện phần Livestream
}


