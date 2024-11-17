<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Melody.aspx.cs" Inherits="WebApplication1.Melody" %>
<asp:Content ID="Melody" ContentPlaceHolderID="content" runat="server">

   <style>
       .music-container {
           display: flex;
           flex-wrap: wrap;
           gap: 20px;
           justify-content: center;
       }

       .music-card {
           border: 1px solid #ddd;
           border-radius: 10px;
           padding: 15px;
           width: 250px;
           box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
           text-align: center;
           background-color: #f9f9f9;
       }

       .music-card img {
           width: 100%;
           height: auto;
           border-radius: 10px;
       }

       .music-card audio {
           width: 100%;
           margin-top: 10px;
       }

       .music-card .title {
           font-weight: bold;
           margin-top: 10px;
           font-size: 16px;
           color: #333;
       }

       .music-card .author {
           color: #555;
           font-size: 14px;
       }

       .music-card .date {
           font-size: 12px;
           color: #888;
           margin-top: 5px;
       }
   </style>

<div>
    <asp:Label ID="Label1" runat="server" Text="Upload Music"></asp:Label><br />
    <asp:Label ID="Label4" runat="server" Text="Song Title"></asp:Label><br />
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Cover Image"></asp:Label><br />
    <asp:FileUpload ID="FileUpload2" runat="server" /><br />
    <asp:Label ID="Label5" runat="server" Text="Author"></asp:Label><br />
    <asp:TextBox ID="txttentacgia" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label><br />
    <asp:TextBox ID="txtmota" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="Upload MP3"></asp:Label><br />
    <asp:FileUpload ID="FileUpload1" runat="server" /><br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" /><br />
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label><br /><br />

    <div class="music-container">
        <asp:DataList ID="ds_music" runat="server" RepeatLayout="Flow">
            <ItemTemplate>
                <div class="music-card">
                    <asp:Image ID="Image1"
                        runat="server"
                        ImageUrl='<%# "data:image/jpeg;base64," + Convert.ToBase64String((byte[])Eval("ANHBAIDANG")) %>' /><br />
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
</div>
</asp:Content>
