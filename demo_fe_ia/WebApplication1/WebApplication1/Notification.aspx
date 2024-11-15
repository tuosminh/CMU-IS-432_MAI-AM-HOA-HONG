<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="WebApplication1.Notification" %>


	<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
		<link href="css/css_notification.css" rel="stylesheet" />

		<div class="row mt-5">
			<div class="col-lg-12 d-flex">
				<div class="advan col-md-12 me-5">
					<div class="card">
						<h4>adhvbadkv</h4>
					</div>

				</div>
				<div class="content-noti col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="p-1">Notification</h3>
						</div>
						<div class="card-body pt-4">
							<div class="accordion">

								<asp:DataList ID="ds_thongbao" runat="server" CssClass="w-100">
									<ItemTemplate>

										<div class="accordion-item mb-2"
											id="accordionExample<%# Container.ItemIndex %>">
											<h2 class="accordion-header" id="heading<%# Container.ItemIndex %>">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse"
													data-bs-target="#collapse<%# Container.ItemIndex %>"
													aria-expanded="false"
													aria-controls="collapse<%# Container.ItemIndex %>">
													<div class="title">
														<asp:Label ID="Label1" runat="server"
															Text='<%# Eval("TIEUDETHONGBAO") %>' CssClass="text-nowrap">
														</asp:Label>
													</div>
													<div class="text-center">
														<asp:Label ID="Label2" runat="server"
															Text='<%# Eval("THOIGIANGUI") %>'>
														</asp:Label>
													</div>
												</button>
											</h2>
											<div id="collapse<%# Container.ItemIndex %>"
												class="accordion-collapse collapse"
												aria-labelledby="heading<%# Container.ItemIndex %>"
												data-bs-parent="#accordionExample<%# Container.ItemIndex %>">
												<div class="accordion-body mt-2">
													<asp:Label ID="Label3" runat="server"
														Text='<%# Eval("CHITIETTHONGBAO") %>'></asp:Label>
												</div>
											</div>
										</div>

									</ItemTemplate>
								</asp:DataList>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>



	</asp:Content>