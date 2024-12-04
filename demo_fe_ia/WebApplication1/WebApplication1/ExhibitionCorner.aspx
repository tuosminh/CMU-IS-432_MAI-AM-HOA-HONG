<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ExhibitionCorner.aspx.cs" Inherits="WebApplication1.ExhibitionCorner" %>
<asp:Content ID="Exhibition_Corner" ContentPlaceHolderID="content" runat="server">
    <link href="css/css_exhibition1.css" rel="stylesheet" />


 <div class="wrapper">
     
     <div class="button-container">
         <asp:Button ID="Button1" runat="server" Text="Livestream" CssClass="button-1" />
         <asp:Button ID="Button2" runat="server" Text="Art Buy" CssClass="button-1"
             OnClientClick="showSection2(); return false;" />
     </div>

     <br>
     <!-- phần livestream -->
     <div id="section1" style=" margin-left: 200px;">
         <div class="video-container">
             <video src="video-ex/video-1.mp4" autoplay muted loop width="300px"></video>
         </div>
         <div class="overlay">
             <asp:Label ID="Label1" runat="server" Text="Launch your personalized Livestream Room"></asp:Label>
             <br />
             <asp:Button ID="Button3" runat="server" Text="Start" CssClass="button-3" />
         </div>

         <div class="info-container">
             <br>
             <asp:Label ID="Label2" runat="server" Text="Real time Art Hub" CssClass="label-2"></asp:Label>
             <!-- <asp:Button ID="Button4" runat="server" Text="See all" CssClass="button-2" /> -->
         </div>


         <br>
         <asp:DataList ID="DSARTHUB" runat="server" RepeatColumns="3">
             <ItemTemplate>
                 <!-- phần video -->
                 <div class="video-container-1">
                     <div class="video-item">
                         <video src="video-ex/video-1.mp4" autoplay muted loop width="300px"
                             height="150px"></video>
                     </div>
                     <div class="author-info">
                         <asp:ImageButton ID="ImageButton1" runat="server"
                             ImageUrl='<%# "images/img_realtimearthub/"+Eval("ANHTACGIA") %>'
                             CommandArgument='<%# Eval("IDARTHUB") %>' CssClass="author-image" />
                         <asp:Button ID="Button5" runat="server" Text="Join"
                             CommandArgument='<%# Eval("IDARTHUB") %>' CssClass="button1" />
                     </div>
                 </div>
             </ItemTemplate>
         </asp:DataList>


         <!-- phần livestream-2 -->
         <br>
         <div class="video-container-3">
             <video src="video-ex/video-2.mp4" autoplay muted loop width="300px"></video>
         </div>
         <div class="overlay-1">
             <asp:Label ID="Label3" runat="server"
                 Text="Launch your auction and present your art to a global audience">
             </asp:Label> <br>
             <asp:Button ID="Button6" runat="server" Text="Start" CssClass="button-4" />
         </div>

         <div class="info-container">
             <br>
             <asp:Label ID="Label4" runat="server" Text="Real time Auctions" CssClass="label-2"></asp:Label>
             <!-- <asp:Button ID="Button7" runat="server" Text="See all" CssClass="button-2" /> -->
             <br />
         </div>

         <br>
         <asp:DataList ID="DSAUCTIONS" runat="server" RepeatColumns="3">
             <ItemTemplate>
                 <div class="video-container-4">
                     <video src="video-ex/video-3.mp4" autoplay muted loop width="300px" height="150px"></video>
                     <div class="author-info-1">
                         <div class="video-item">
                             <br>
                             <asp:ImageButton ID="ImageButton2" runat="server"
                                 CommandArgument='<%# Eval("IDAUCTION") %>'
                                 ImageUrl='<%# "images/img_realtimeauctions/"+Eval("ANHTACGIA") %>'
                                 CssClass="author-image" />
                             <asp:Button ID="Button8" runat="server" Text="Join" CssClass="button1" />
                         </div>
                     </div>
                 </div>

             </ItemTemplate>
         </asp:DataList>
         <br />
     </div>


     <!-- phần Art buy -->
     <div id="section2" style="display: none; margin-left: 200px;">

         <div class="info-container">
             <asp:Label ID="Label5" runat="server" Text="Feature Top Music " CssClass="label-2"></asp:Label>
             <!-- <asp:Button ID="Button9" runat="server" Text="See all" CssClass="button-2" /> -->
             <br />
             <br />
         </div>


         <asp:DataList ID="DSTOPMUSIC" runat="server" RepeatColumns="2">
             <ItemTemplate>
                 <div class="music-image-wrapper">
                     <div class="music-item-container">
                         <!-- cột 1 ảnh -->
                         <div class="music-image">
                             <asp:ImageButton ID="ImageButton3" runat="server"
                                 CommandArgument='<%# Eval("IDTOPMUSIC") %>'
                                 ImageUrl='<%# "img_topmusic/"+Eval("ANHMUSIC") %>' />
                         </div>

                         <!-- cột 2 tên nhạc, tác giả, giá -->
                         <div class="music-info">
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("TENMUSIC") %>'
                                 style=" font-weight: bold; font-size: 10px; margin-left: 1px; padding-left: 20px;">
                             </asp:Label>
                             <asp:Label ID="Label7" runat="server" Text='<%# Eval("TENTACGIA") %>'
                                 style="font-size: 8px; margin-left: 20px;"></asp:Label>
                             <asp:Label ID="Label8" runat="server" Text='<%# Eval("GIAMUSIC") %>'
                                 style=" font-weight: bold; font-size: 15px; margin-left: 20px; color: blueviolet;">
                             </asp:Label>
                         </div>
                         <!-- cột 3 các nut button -->
                         <div class="music-button">
                             <asp:Button ID="Button13" runat="server" Text="Add to cart" CssClass="button-1" />
                             <asp:Button ID="Button14" runat="server" Text="Buy now" CssClass="button-1" />
                         </div>
                     </div>
                 </div>
             </ItemTemplate>
         </asp:DataList>

         <div class="info-container">
             <br />
             <asp:Label ID="Label9" runat="server" Text="Top_Rated Paintings" CssClass="label-2"></asp:Label>
             <!-- <asp:Button ID="Button10" runat="server" Text="See all" CssClass="button-2"/> -->
         </div>


         <br />
         <asp:DataList ID="DSTOPPAITING" runat="server" RepeatColumns="3">
             <ItemTemplate>
                 <div class="painting-image-wrapper">
                     <div class="painting-item-container">
                         <div class="painting-image">
                             <asp:ImageButton ID="ImageButton4" runat="server" CssClass="painting-1"
                                 CommandArgument='<%# Eval("IDTOPPAINTING") %>'
                                 ImageUrl='<%# "img_toppainting/"+Eval("ANHPAINTING") %>' />
                         </div>
                         <div class="painting-info">
                             <asp:Label ID="Label10" runat="server" Text='<%# Eval("TENPAINTING") %>'
                                 style="font-weight: bold; font-size: 13px; margin-right: 50px;">
                             </asp:Label><br>
                             <asp:Label ID="Label11" runat="server" Text='<%# Eval("TENTACGIA") %>'></asp:Label>
                             <br>
                             <asp:Label ID="Label12" runat="server" Text='<%# Eval("GIAPAINTING") %>'
                                 style="font-weight: bold; color: blueviolet;">
                             </asp:Label>
                         </div>
                         <div class="painting-button">
                             <asp:Button ID="Button11" runat="server" Text="ADD to cart"
                                 CssClass="button-style" />
                             <asp:Button ID="Button12" runat="server" Text="Buy now" CssClass="button-style" />
                         </div>
                     </div>
                 </div>
             </ItemTemplate>
         </asp:DataList>
     </div>
 </div>


    <script src="js/exhibition.js"></script>
</asp:Content>

