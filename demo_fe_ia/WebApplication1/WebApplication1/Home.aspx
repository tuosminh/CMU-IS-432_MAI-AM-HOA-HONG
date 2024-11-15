<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs"
    Inherits="WebApplication1.Home" %>

    <%@ Register Src="~/MenuLogin.ascx" TagPrefix="uc1" TagName="MenuLogin" %>
        <asp:Content ID="Home" ContentPlaceHolderID="content" runat="server" CssClass="w-100">
            <link href="css/css_home.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />


            <div class="container d-flex flex-column justify-content-center align-items-center">
                <div class="row firstRow">
                    <div class="firstRow-content d-flex">
                        <div class="text-firstRow me-5 d-flex align-items-center">
                            <div class="">
                                <h2 class="mb-5">Inspired Art</h2>
                                <div class="mt-5">
                                    <p>Art that inspires goes beyond creation</p>
                                    <p> It’s a journey where imagination and emotion merge, crafting impressions that
                                        resonate deeply and endure over time</p>
                                </div>
                            </div>
                        </div>
                        <div class="img-firstRow d-flex justify-content-center align-items-center">
                            <div class="background"></div>
                            <div class="img-background">
                                <%--<img src="images/img_home/10.jpg" />--%>
                                <%--<img src="images/img_home/2.jpg" />--%>
                                <img src="images/img_home/12.jpg" />
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row secondRow pt-5 justify-content-center">
                    <div class="col-lg-12 contentRow">
                        <div class="row mb-5">
                            <div id="carouselExampleIndicators" class="carousel slide p-0">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleIndicators"
                                        data-bs-slide-to="0" class="active" aria-current="true"
                                        aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators"
                                        data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators"
                                        data-bs-slide-to="2" aria-label="Slide 3"></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="images/img_home/1.jpg" style="height: 600px" class="d-block w-100"
                                            alt="...">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="images/img_home/2.jpg" style="height: 600px" class="d-block w-100"
                                            alt="...">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="images/img_home/3.jpg" style="height: 600px" class="d-block w-100"
                                            alt="...">
                                    </div>
                                </div>
                                <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>

                        <div class="row intro-Row mb-5 pt-4">
                            <div class="col-lg-12">
                                <div class="intro-Row-header">
                                    <h2 class="m-0">The Art
                                        Story</h2>
                                </div>
                                <div class="row intro-Row-body d-flex justify-content-around">
                                    <div class="col-lg-3 pt-4">
                                        <div class="title-card card">
                                            <h4>Hành trình sáng tạo</h4>
                                        </div>
                                        <div class="content-card card">
                                            <div class="card-header">
                                                <img src="images/img_home/17.jpg" />
                                                <%--<img src="images/img_home/16.jpg" />--%>
                                                <%--<img src="images/img_home/10.jpg" />--%>
                                            </div>
                                            <div class="card-body">
                                                <p>Khám phá câu chuyện đằng sau mỗi tác phẩm, nơi cảm hứng và đam mê
                                                    nghệ
                                                    thuật
                                                    hòa quyện, tạo nên những trải nghiệm đầy
                                                    cảm xúc.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 pt-4">
                                        <div class="title-card card">
                                            <h4>Sức mạnh nghệ thuật</h4>
                                        </div>
                                        <div class="content-card card">
                                            <div class="card-header">
                                                <img src="images/img_home/18.jpg" />
                                                <%--<img src="images/img_home/10.jpg" />--%>
                                            </div>
                                            <div class="card-body">
                                                <p>Với chúng tôi, nghệ thuật không chỉ là hình ảnh mà còn là ngôn ngữ
                                                    truyền tải ý tưởng và câu chuyện, mang lại sự kết
                                                    nối và cảm hứng.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 pt-4">
                                        <div class="title-card card">
                                            <h4>Không gian sáng tạo</h4>
                                        </div>
                                        <div class="content-card card">
                                            <div class="card-header">
                                                <img src="images/img_home/16.jpg" />
                                            </div>
                                            <div class="card-body">
                                                <p>Chúng tôi tạo ra một môi trường nơi mọi người có thể thỏa sức sáng
                                                    tạo và thể hiện bản thân thông qua nghệ thuật
                                                    truyền cảm hứng.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                        <div class="row box box1 mb-5 pt-5">
                            <div class="col-lg-12 p-0">
                                <div class="card">
                                    <div class="row d-flex">
                                        <div class=" col-lg-6 col-md-12 d-flex align-items-center">
                                            <div class="ctn p-4 ps-5 d-flex flex-column justify-content-center">
                                                <h2>Music is the voice of emotions</h2>
                                                <p class="m-0">Melodies guide the mind through emotions, touching the
                                                    soul
                                                    with
                                                    every
                                                    note.
                                                </p>
                                                <div class="m-3 d-flex justify-content-center">
                                                    <asp:Button ID="Button1" runat="server" Text="Discover"
                                                        CssClass="btn-custom" OnClick="ButtonMelody_Click" />

                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-lg-6 col-md-12">
                                            <div class="box m-5">
                                                <div class="img-box">
                                                    <span style="--i:1">
                                                        <img src="images/img_home/2.jpg" class="img-items" /></span>
                                                    <span style="--i:2">
                                                        <img src="images/img_home/3.jpg" class="img-items" /></span>
                                                    <span style="--i:3">
                                                        <img src="images/img_home/4.jpg" class="img-items" /></span>
                                                    <span style="--i:4">
                                                        <img src="images/img_home/5.jpg" class="img-items" /></span>
                                                    <span style="--i:5">
                                                        <img src="images/img_home/6.jpg" class="img-items" /></span>
                                                    <span style="--i:6">
                                                        <img src="images/img_home/7.jpg" class="img-items" /></span>
                                                    <span style="--i:7">
                                                        <img src="images/img_home/8.jpg" class="img-items" /></span>
                                                    <span style="--i:8">
                                                        <img src="images/img_home/9.jpg" class="img-items" /></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="row introTwo-Row mb-5 pt-5">
                            <div class="col-lg-12">
                                <div class="row d-flex align-items-center justify-content-around">
                                    <div class="col-lg-5 content-introTwo-Row ">
                                        <h4>Nghệ thuật được truyền cảm hứng là nơi các nghệ sĩ biến ý tưởng và cảm xúc
                                            thành
                                            hình ảnh sống động, tạo nên tác phẩm
                                            mang dấu ấn độc đáo, khơi gợi kết nối sâu sắc với người xem.</h4>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class=" img-introTwo-Row p-3">
                                            <img src="images/img_home/13.jpg" />
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>



                        <div class="row box box2 mb-5 pt-5">
                            <div class="col-lg-12 p-0">
                                <div class="card p-4">
                                    <div class="row d-flex">
                                        <div
                                            class="col-lg-6 col-md-12 p-3 d-flex align-items-center justify-content-center">
                                            <div class="img-box">
                                                <img src="images/img_home/4.jpg" class="img-items" />
                                                <img src="images/img_home/5.jpg" class="img-items" />
                                                <img src="images/img_home/6.jpg" class="img-items" />
                                                <img src="images/img_home/8.jpg" class="img-items" />
                                                <img src="images/img_home/9.jpg" class="img-items" />
                                            </div>
                                        </div>
                                        <div class=" col-lg-6 col-md-12 p-3 d-flex align-items-center">
                                            <div class="ctn p-4 d-flex flex-column justify-content-center">
                                                <h2>Creative vision unlocks freedom</h2>
                                                <p class="m-0">Unfolding a journey of discovery, where each detail
                                                    evokes
                                                    emotions.
                                                </p>
                                                <div class="m-3 d-flex justify-content-center">
                                                    <asp:Button ID="Button2" runat="server" Text="Discover"
                                                        CssClass="btn-custom" OnClick="ButtonPhotos_Click" />
                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <script src="js/js_home.js"></script>
        </asp:Content>