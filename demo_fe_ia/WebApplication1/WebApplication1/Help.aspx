<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="WebApplication1.Help" %>
<asp:Content ID="Help" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_help.css" rel="stylesheet" />

    <div class="help-container">
     <div class="help-header">
         <h2>Hướng dẫn sử dụng</h2>
     </div>

     <div class="help-content">
         <p>Chào mừng đến với phần trợ giúp! Dưới đây là các hướng dẫn chi tiết để bạn có thể sử dụng ứng dụng của chúng tôi một cách hiệu quả nhất:</p>

         <ul>
             <li><a href="#section1">Cách sử dụng chức năng Upload</a></li>
             <li><a href="#section2">Cách sử dụng chức năng Tạo nhạc</a></li>
             <li><a href="#section3">Truy cập vào các tính năng khác</a></li>
             <li><a href="#section4">Câu hỏi thường gặp</a></li>
             <li><a href="#section5">Liên hệ hỗ trợ</a></li>
         </ul>

         <div id="section1" class="section">
             <h3>Cách sử dụng chức năng Upload</h3>
             <p>Chức năng Upload giúp người dùng tải lên các tệp tin từ máy tính hoặc thiết bị của mình lên hệ thống, ví dụ như ảnh, tài liệu, video, hoặc các tệp tin khác. Bạn có thể làm theo các bước dưới đây để tải lên tệp tin dễ dàng:</p>

             <h4>Bước 1: Chọn tệp tin từ thiết bị của bạn</h4>
             <p>Đầu tiên, hãy nhấp vào nút <strong>"Chọn Tệp"</strong> để mở hộp thoại chọn tệp từ máy tính hoặc thiết bị của bạn. Bạn có thể chọn các tệp tin như ảnh (.jpg, .png), tài liệu (.pdf, .docx), hoặc các tệp tin khác mà hệ thống hỗ trợ.</p>

             <h4>Bước 2: Nhấn vào nút "Tải Lên"</h4>
             <p>Sau khi bạn đã chọn tệp, nhấp vào nút <strong>"Tải Lên"</strong> để gửi tệp tin đó lên hệ thống. Quá trình tải lên sẽ diễn ra và bạn sẽ thấy thông báo xác nhận khi quá trình hoàn tất.</p>

             <h4>Bước 3: Kiểm tra tệp đã tải lên</h4>
             <p>Chúng tôi sẽ hiển thị tệp tin bạn vừa tải lên trên hệ thống. Bạn có thể kiểm tra tệp đã được tải lên thành công hay chưa. Nếu có bất kỳ sự cố nào, hệ thống sẽ hiển thị thông báo lỗi để bạn có thể khắc phục.</p>

             <h4>Ví dụ về biểu mẫu Upload</h4>
             <form action="/upload" method="post" enctype="multipart/form-data">
                 <label for="fileUpload">Chọn tệp:</label>
                 <input type="file" id="fileUpload" name="file" accept=".jpg,.png,.pdf,.docx" />
                 <button type="submit">Tải Lên</button>
             </form>

             <p>Lưu ý: Các tệp tải lên có thể có dung lượng tối đa là 10MB. Nếu tệp quá lớn, vui lòng chọn lại tệp nhỏ hơn hoặc thử nén tệp để giảm kích thước.</p>

             <h4>Các Lưu Ý Quan Trọng:</h4>
             <ul>
                 <li>Chỉ hỗ trợ các định dạng tệp tin phổ biến như .jpg, .png, .pdf, .docx.</li>
                 <li>Tệp tin bạn tải lên sẽ được lưu trữ trong hệ thống của chúng tôi để bạn có thể dễ dàng truy cập sau này.</li>
                 <li>Hệ thống sẽ tự động xử lý các tệp tin sau khi bạn tải lên, bao gồm việc quét virus và kiểm tra tính hợp lệ của tệp.</li>
             </ul>
         </div>

         <div id="section2" class="section">
             <h3>Cách sử dụng chức năng Tạo nhạc</h3>
             <p>Chức năng Tạo nhạc cho phép bạn sáng tạo các bản nhạc hoặc chỉnh sửa các bản nhạc sẵn có. Bạn có thể thực hiện theo các bước sau:</p>

             <h4>Bước 1: Chọn công cụ tạo nhạc</h4>
             <p>Chọn công cụ tạo nhạc phù hợp như piano, guitar hoặc các bộ trống ảo để bắt đầu sáng tác.</p>

             <h4>Bước 2: Tạo hoặc chỉnh sửa nhạc</h4>
             <p>Thêm các nốt nhạc và chỉnh sửa các âm thanh để tạo ra một bản nhạc hoàn chỉnh.</p>

             <h4>Bước 3: Lưu và chia sẻ nhạc</h4>
             <p>Sau khi hoàn thành, bạn có thể lưu bản nhạc và chia sẻ với cộng đồng hoặc tải về máy tính của bạn.</p>
         </div>

         <div id="section3" class="section">
             <h3>Truy cập vào các tính năng khác</h3>
             <p>Ứng dụng của chúng tôi còn cung cấp các tính năng như quản lý tài khoản, xem lịch sử sử dụng, và các công cụ hỗ trợ khác. Hãy truy cập vào các menu tương ứng để khám phá thêm.</p>
         </div>

         <div id="section4" class="section">
             <h3>Câu hỏi thường gặp</h3>
             <p>Câu hỏi 1: Làm sao để reset mật khẩu?</p>
             <p>Câu trả lời: Bạn có thể reset mật khẩu bằng cách nhấn vào "Quên mật khẩu" trên màn hình đăng nhập và làm theo hướng dẫn.</p>
         </div>

         <div id="section5" class="section">
             <h3>Liên hệ hỗ trợ</h3>
             <p>Nếu bạn gặp phải bất kỳ vấn đề nào, vui lòng liên hệ với chúng tôi qua email: support@example.com</p>
         </div>
     </div>
 </div>

</asp:Content>
