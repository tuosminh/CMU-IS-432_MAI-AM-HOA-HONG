<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Melody.aspx.cs" Inherits="WebApplication1.Melody" %>
<asp:Content ID="Melody" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_melodyyy.css" rel="stylesheet" />

    <div class="bodymusic">
        <div class="container">
                   <div class="containerheader">
                        <div class="card1">
                            <asp:Label ID="Label1" runat="server" Text="Upload Music" CssClass="uploadtitl"></asp:Label>
                            <div class="form-group">
                                <span>Tên sáng tác</span>
                                <asp:TextBox ID="txtname" runat="server" />
                            </div>
                            <div class="form-group">
                                <span>Ảnh bìa ca khúc</span>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </div>
                            <div class="form-group">
                                <span>Nghệ danh</span>
                                <asp:TextBox ID="txttentacgia" runat="server" />
                            </div>
                            <div class="form-group">
                                <span>Mô tả ca khúc</span>
                                <asp:TextBox ID="txtmota" runat="server" TextMode="MultiLine" />
                            </div>
                            <div class="form-group">
                                <span>File ca khúc</span>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" CssClass="upload-btn" OnClientClick="clearFields(); return false;" />
                            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </div>

                   <div class="card2">
                    <!-- Video tự động phát và lập lại, không có âm thanh -->
                    <video autoplay loop muted controls>
                        <source src='<%= ResolveUrl("~/videoMelody/anhtuan.mp4") %>' type="video/mp4">
                        Trình duyệt của bạn không hỗ trợ video.
                    </video>
                </div>

                </div>

</div>

        <div class="showmusic">
             <asp:Label ID="Label2" runat="server" Text="Top Featured Music List" CssClass="uploadtitl"></asp:Label>
            <asp:DataList ID="ds_music" runat="server" RepeatLayout="Flow" RepeatColumns="5">
                <ItemTemplate>
                    <div class="music-card">
                        <asp:Image ID="Image1"
                            runat="server"
                            ImageUrl='<%# "data:image/jpeg;base64," + Convert.ToBase64String((byte[])Eval("ANHBAIDANG")) %>' />
                        <div class="title">
                            <asp:Label ID="lb1" runat="server" Text='<%# Eval("TENNHAC") %>'></asp:Label>
                        </div>
                        <div class="author">
                            <asp:Label ID="lb2" runat="server" Text='<%# Eval("TENTACGIA") %>'></asp:Label>
                        </div>
                        <div class="date">
                            <asp:Label ID="lb3" runat="server" Text='<%# Eval("DATE", "{0:yyyy-MM-dd}") %>'></asp:Label>
                        </div>
                        <audio controls>
                            <source src='<%# "data:audio/mpeg;base64," + Convert.ToBase64String((byte[])Eval("FILEMP3")) %>' type="audio/mpeg" />
                        </audio>

                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div class="musicrecommendtion">
               <asp:Label ID="Label3" runat="server" Text="Trend" CssClass="uploadtitl"></asp:Label>
             <div class="music-card">
                 <img src="images/avatar.jpg"  alt="Album Cover"/>
                <div class="title">Song Title</div>
                <div class="author">Artist Name</div>
                <div class="date">2024-11-20</div>
                <audio controls>
                    <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
                    Your browser does not support the audio element.
                </audio>
            </div>

               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>

               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>

               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>

               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>

               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>


               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>

               <div class="music-card">
       <img src="images/avatar.jpg"  alt="Album Cover"/>
      <div class="title">Song Title</div>
      <div class="author">Artist Name</div>
      <div class="date">2024-11-20</div>
      <audio controls>
          <source src="mp3file/Kalimba.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
      </audio>
  </div>
        </div>

       
         <div class="toprcm">

                  <asp:Label ID="Label4" runat="server" Text="Music Recommendtion" CssClass="uploadtitl"></asp:Label>

    <!-- Thẻ nhạc 1 -->
                <div class="container_dianhac">
                    <div class="img_dianhac">
                        
                        <img src="img_topmusic/anhxoanen3.png" alt="Đĩa nhạc" />
                    </div>
                    <div class="song_info">
                        <p class="title">Âm thầm bên em</p>
                        <p class="artist">Sơn Tùng MTP</p>
                    </div>
                    <div class="controls">
                        <button class="playBtn">&#9658;</button> <!-- Nút Play -->
                        <button class="pauseBtn">&#10074;&#10074;</button> <!-- Nút Pause -->
                    </div>

                    <!-- Thanh tiến trình -->
                    <div class="progress-container">
                        <div class="progress-bar" id="progressBar1"></div>
                        <audio id="audio1" src="anhtuan.mp3" preload="auto"></audio>
                    </div>

                    <!-- Điều chỉnh âm lượng với icon -->
                    <div class="volume-container">
                        <i class="fas fa-volume-up volume-icon" id="volumeIcon1"></i>
                    </div>
                </div>

    

                <!-- Các thẻ nhạc khác sẽ tương tự -->
  
                <div class="container_dianhac">
                    <div class="img_dianhac">
                        <img src="img_topmusic/anhxoanen3.png" />
                    </div>
                    <div class="song_info">
                        <p class="title">Âm thầm bên em</p>
                        <p class="artist">Sơn Tùng MTP</p>
                    </div>
                    <div class="controls">
                        <button class="playBtn">&#9658;</button> <!-- Nút Play -->
                        <button class="pauseBtn">&#10074;&#10074;</button> <!-- Nút Pause -->
                    </div>

                    <!-- Thanh tiến trình -->
                    <div class="progress-container">
                        <div class="progress-bar" id="progressBar1"></div>
                        <audio id="audio1" src="anhtuan.mp3" preload="auto"></audio>
                    </div>

                    <!-- Điều chỉnh âm lượng với icon -->
                    <div class="volume-container">
                        <i class="fas fa-volume-up volume-icon" id="volumeIcon1"></i>
                    </div>
                </div>
            <!-- Thêm class "song" cho các thẻ nhạc -->
         
                <div class="container_dianhac">
       <div class="img_dianhac">
           
           <img src="img_topmusic/anhxoanen3.png" alt="Đĩa nhạc" />
       </div>
       <div class="song_info">
           <p class="title">Âm thầm bên em</p>
           <p class="artist">Sơn Tùng MTP</p>
       </div>
       <div class="controls">
           <button class="playBtn">&#9658;</button> <!-- Nút Play -->
           <button class="pauseBtn">&#10074;&#10074;</button> <!-- Nút Pause -->
       </div>

       <!-- Thanh tiến trình -->
       <div class="progress-container">
           <div class="progress-bar" id="progressBar1"></div>
           <audio id="audio1" src="anhtuan.mp3" preload="auto"></audio>
       </div>

       <!-- Điều chỉnh âm lượng với icon -->
       <div class="volume-container">
           <i class="fas fa-volume-up volume-icon" id="volumeIcon1"></i>
       </div>
   </div>


                <div class="container_dianhac">
       <div class="img_dianhac">
           
           <img src="img_topmusic/anhxoanen3.png" alt="Đĩa nhạc" />
       </div>
       <div class="song_info">
           <p class="title">Âm thầm bên em</p>
           <p class="artist">Sơn Tùng MTP</p>
       </div>
       <div class="controls">
           <button class="playBtn">&#9658;</button> <!-- Nút Play -->
           <button class="pauseBtn">&#10074;&#10074;</button> <!-- Nút Pause -->
       </div>

       <!-- Thanh tiến trình -->
       <div class="progress-container">
           <div class="progress-bar" id="progressBar1"></div>
           <audio id="audio1" src="anhtuan.mp3" preload="auto"></audio>
       </div>

       <!-- Điều chỉnh âm lượng với icon -->
       <div class="volume-container">
           <i class="fas fa-volume-up volume-icon" id="volumeIcon1"></i>
       </div>
   </div>

                <div class="container_dianhac">
       <div class="img_dianhac">
           
           <img src="img_topmusic/anhxoanen3.png" alt="Đĩa nhạc" />
       </div>
       <div class="song_info">
           <p class="title">Âm thầm bên em</p>
           <p class="artist">Sơn Tùng MTP</p>
       </div>
       <div class="controls">
           <button class="playBtn">&#9658;</button> <!-- Nút Play -->
           <button class="pauseBtn">&#10074;&#10074;</button> <!-- Nút Pause -->
       </div>

       <!-- Thanh tiến trình -->
       <div class="progress-container">
           <div class="progress-bar" id="progressBar1"></div>
           <audio id="audio1" src="anhtuan.mp3" preload="auto"></audio>
       </div>

       <!-- Điều chỉnh âm lượng với icon -->
       <div class="volume-container">
           <i class="fas fa-volume-up volume-icon" id="volumeIcon1"></i>
       </div>
   </div>
              <button class="show-all-btn" id="showAllBtn">See All</button>

         </div>
    </div>
 
    <script>
        // Ẩn tất cả các nút Pause khi trang vừa tải
        window.addEventListener('DOMContentLoaded', () => {
            const pauseBtns = document.querySelectorAll('.pauseBtn');
            pauseBtns.forEach(pauseBtn => {
                pauseBtn.style.display = 'none';
            });
        });

        // Điều khiển phát nhạc cho các thẻ
        const playBtns = document.querySelectorAll('.playBtn');
        const pauseBtns = document.querySelectorAll('.pauseBtn');
        const audioElements = document.querySelectorAll('audio');
        const progressBars = document.querySelectorAll('.progress-bar');

        document.getElementById('showAllBtn').addEventListener('click', (event) => {
            // Ngăn chặn hành động mặc định
            event.preventDefault();

            // Tìm tất cả các bài hát
            const songs = document.querySelectorAll('.container_dianhac');

            // Xử lý nút và hiện/ẩn các bài hát
            const showAllBtn = document.getElementById('showAllBtn');
            if (showAllBtn.textContent === 'See All') {
                // Hiện tất cả
                songs.forEach(song => song.classList.remove('hidden'));
                showAllBtn.textContent = 'Show Less'; // Đổi nút thành "Show Less"
            } else {
                // Ẩn các bài hát sau bài hát thứ 2
                songs.forEach((song, index) => {
                    if (index >= 2) {
                        song.classList.add('hidden'); // Chỉ ẩn từ bài hát thứ 3
                    }
                });
                showAllBtn.textContent = 'See All'; // Đổi nút thành "See All"
            }
        });


        playBtns.forEach((playBtn, index) => {
            const audio = audioElements[index];
            const pauseBtn = pauseBtns[index];
            const progressBar = progressBars[index];

            // Khi nhấn nút Play
            playBtn.addEventListener('click', () => {
                event.preventDefault();
                audio.play();
                playBtn.style.display = 'none'; // Ẩn nút Play
                pauseBtn.style.display = 'block'; // Hiển thị nút Pause
            });

            // Khi nhấn nút Pause
            pauseBtn.addEventListener('click', () => {
                event.preventDefault();
                audio.pause();
                playBtn.style.display = 'block'; // Hiển thị lại nút Play
                pauseBtn.style.display = 'none'; // Ẩn nút Pause
            });

            // Cập nhật thanh tiến trình khi nhạc phát
            audio.addEventListener('timeupdate', () => {
                event.preventDefault();
                const progress = (audio.currentTime / audio.duration) * 100;
                progressBar.style.width = progress + '%';
            });

            // Khi nhạc kết thúc, chuyển lại thành nút Play
            audio.addEventListener('ended', () => {
                event.preventDefault();
                playBtn.style.display = 'block'; // Hiển thị lại nút Play
                pauseBtn.style.display = 'none'; // Ẩn nút Pause
                progressBar.style.width = '0%'; // Đặt lại thanh tiến trình về 0
            });
        });
    </script>

</asp:Content>
