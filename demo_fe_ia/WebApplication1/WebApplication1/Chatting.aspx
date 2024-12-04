<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Chatting.aspx.cs" Inherits="WebApplication1.Chatting" %>
    <asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
        <link href="css/css_chatting.css" rel="stylesheet" />



        <%--<asp:Button ID="btnQUAYLAI" runat="server" Text="Back" CssClass="btn-back" />
        <br />--%>
        <div class="chatRow row mt-4 mb-4">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header mb-2 d-flex p-0">
                        <div class="ava-user-chat me-2 d-flex">
                            <div class="acc-ava-user-chat d-flex flex-column justify-content-center">
                                <div class="header-ava">
                                    <div class="aroundAvatar">
                                        <img src="images/avatar.jpg" />
                                    </div>
                                    <div class="icon-plus">
                                        <i class="fa-solid fa-plus"></i>
                                    </div>
                                </div>
                                <div class="textAva mt-2 text-center">
                                    <span class="text-nowrap">My Story</span>
                                </div>
                            </div>
                            <div class="other-ava-user-chat d-flex">
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Nôm</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Phi</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Minh</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Quốc</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Lượng</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Giang</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Nhi</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Sa</span>
                                    </div>
                                </div>
                                <div class="other-ava-items d-flex flex-column justify-content-center">
                                    <div class="aroundAvatar">
                                        <img src="images/img_home/2.jpg" />
                                    </div>
                                    <div class="textAva mt-2 text-center">
                                        <span>Sương</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="ava-user d-flex justify-content-between align-items-center">
                            <div class="sur-ava-user d-flex align-items-center">
                                <div class="header-ava">
                                    <div class="aroundAvatar me-3">
                                        <img src="images/avatar.jpg" />
                                    </div>
                                </div>
                                <div class="text-Avatext-center">
                                    <span class="text-nowrap">Ly Ly</span>
                                </div>
                            </div>

                            <div class="navi-btn">
                                <button class="text-center">
                                    <i class="fa-solid fa-ellipsis-vertical"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body p-0 d-flex ">
                        <div class="user-chat me-2">
                            <div class="sur-user-chat">
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-chat-items col-lg-12">
                                    <div class="cnt-user-chat-items d-flex align-items-center">
                                        <div class="aroundAvatar me-3">
                                            <img src="images/img_home/2.jpg" />
                                        </div>
                                        <div class="inf-user-chat-items">
                                            <h5>Phi</h5>
                                            <p>Bạn: Đã gửi 1 ảnh</p>
                                        </div>
                                        <div class="dot-user-chat ms-auto">
                                            <button class="text-center">
                                                <i class="fa-solid fa-ellipsis-vertical"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="content-chat">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header d-flex align-items-center justify-content-between">
                                            <div class="info-user-chat d-flex align-items-center">
                                                <div class="img-user-chat me-3">
                                                    <img src="images/img_home/2.jpg" />
                                                </div>
                                                <div class="name-user-chat ">
                                                    <h4>Phi</h4>
                                                    <div class="name-chat d-flex ">
                                                        <p class="m-0 me-2">Online</p>
                                                        <span></span>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="navi-user-chat d-flex align-items-center">
                                                <button><i class="fa-solid fa-phone"></i></button>
                                                <button><i class="fa-solid fa-video"></i></button>
                                                <button><i class="fa-solid fa-ellipsis-vertical"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="chat-container">
                                                <div class="row">
                                                    <div class="col-lg-12 pt-2 ">
                                                        <div class="demo-chat d-flex align-items-center">
                                                            <div class="img-user-chat me-3">
                                                                <img src="images/img_home/2.jpg" />
                                                            </div>
                                                            <div class="main-demo-chat d-flex flex-column">
                                                                <div class="mb-2">
                                                                    <span
                                                                        class="chat-message text-center me-4">alooooooooooooo</span>
                                                                    <span class="chat-time">13/11/2024 1:14:20 SA</span>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <span
                                                                        class="chat-message text-center me-4">alooooooooooooo</span>
                                                                    <span class="chat-time">13/11/2024 1:14:25 SA</span>
                                                                </div>
                                                                <div class="mb-2">
                                                                    <span class="chat-message text-center me-4">gui anh
                                                                        di</span>
                                                                    <span class="chat-time">13/11/2024 1:14:36 SA</span>
                                                                </div>
                                                            </div>


                                                        </div>

                                                    </div>
                                                    <div class="col-lg-12">
                                                        <asp:DataList ID="dsTINNHAN" runat="server"
                                                            CssClass="chat-list">
                                                            <ItemTemplate>
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <div class="main-chat d-flex flex-column ">
                                                                            <div
                                                                                class="d-flex justify-content-end align-items-center">
                                                                                <asp:Label ID="lblTHOIGIANNHAN"
                                                                                    runat="server"
                                                                                    Text='<%# Eval("THOIGIANNHAN") %>'
                                                                                    CssClass="chat-time">
                                                                                </asp:Label>
                                                                                <asp:Label ID="lblTINNHAN"
                                                                                    runat="server"
                                                                                    Text='<%# Eval("TINNHAN") %>'
                                                                                    CssClass="chat-message text-center ms-4">
                                                                                </asp:Label>
                                                                            </div>
                                                                            <div class="anh">
                                                                                <asp:Image ID="imgFile" runat="server"
                                                                                    ImageUrl='<%# Eval("FILETINNHAN", "~/UploadedFiles/" + Eval("FILETINNHAN")) %>'
                                                                                    Visible='<%# Eval("FILETINNHAN") != DBNull.Value %>'
                                                                                    CssClass="chat-image" />
                                                                            </div>

                                                                        </div>

                                                                    </div>

                                                                </div>

                                                            </ItemTemplate>
                                                        </asp:DataList>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="card-footer d-flex align-items-center w-100">
                                            <!-- <div class="input-chat"> -->
                                            <div class="chat-input-container d-flex align-items-center">
                                                <div class="file-chat d-flex align-items-center me-2">
                                                    <div class="file-chat-items me-1">
                                                        <asp:FileUpload ID="FileUpload1" runat="server"
                                                            CssClass="file-upload" />
                                                        <button type="button" class="upload-btn text-center"
                                                            onclick="document.getElementById('<%= FileUpload1.ClientID %>').click();">
                                                            <i class="fa-solid fa-paperclip"></i>
                                                        </button>
                                                    </div>
                                                    <div class="file-chat-items">
                                                        <button class="upload-btn text-center"><i
                                                                class="fa-regular fa-face-grin-wide"></i></button>
                                                    </div>
                                                </div>
                                                <div class="chat d-flex align-items-center">
                                                    <asp:TextBox ID="txtTINNHAN" runat="server"
                                                        CssClass="chat-input form-control"
                                                        placeholder="Type a message...">
                                                    </asp:TextBox>
                                                    <div class="btn-send-chat">
                                                        <asp:Button ID="btnGui" runat="server" Text="Send"
                                                            CssClass="btn-send" OnClick="btnGui_Click" />
                                                        <button type="button" class="send-btn"
                                                            onclick="document.getElementById('<%= btnGui.ClientID %>').click();">
                                                            <i class="fa-solid fa-paper-plane"></i>
                                                        </button>
                                                    </div>

                                                </div>


                                            </div>
                                            <!-- </div> -->
                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </div>
                </div>
            </div>

        </div>


    </asp:Content>