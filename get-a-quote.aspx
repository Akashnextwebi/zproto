<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="get-a-quote.aspx.cs" Inherits="get_a_quote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pbmit-bg-color-blackish .contact-form .form-control {
            background: #fff;
            color: #000;
        }

        section.contact-us-section-two {
            padding: 180px 0px 80px;
        }

        input[type="file"] {
            height: 42px !important;
            padding: 10px;
        }

        @media (min-width: 320px) and (max-width: 767px) {
            section.contact-us-section-two {
                padding: 100px 0px 40px !important;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="contact-us-section-two">
        <div class="container">
            <div class="row">

                <div class="col-md-12 contact-right-col ">
                    <div class="contact-wrap pbmit-bg-color-blackish" style="background: url(new-img/get/get.png); background-position: center; background-size: cover">
                        <div class="pbmit-heading-subheading text-center animation-style2">

                            <h2 class="pbmit-title mb-3">Get A Quote</h2>
                            <p class="text-white">
                                Let get the  conversation started Today.<br>
                                Fill  out the form  on this page or email us directly to request  a quote.

                            </p>
                        </div>
                        <div class="contact-form" method="post" id="contact-form" >
                            <div class="row">
                                <asp:Label runat="server" Visible="false" ID="lblStatus"></asp:Label>
                                <div class="col-sm-12 col-md-6">
                                    <asp:TextBox runat="server" MaxLength="100" placeholder="Your Name *" ID="txtName" CssClass="form-control acceptOnlyAlpha"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv1" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtName" SetFocusOnError="true" ValidationGroup="ContactUs" ErrorMessage="Fields can't be blank"></asp:RequiredFieldValidator>
                                    <%--<input type="text" class="form-control" placeholder="Full Name *" name="your-name" required="">--%>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" MaxLength="100" placeholder="Your Email *"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv2" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtEmail" SetFocusOnError="true" ValidationGroup="ContactUs" ErrorMessage="Fields can't be blank"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="ContactUs" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Invalid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <%--<input type="email" class="form-control" placeholder="Your Email *" name="email-address" required="">--%>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control onlyNum" MaxLength="10" placeholder="Your Phone *"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv4" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtPhone" SetFocusOnError="true" ValidationGroup="ContactUs" ErrorMessage="Fields can't be blank"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rfv3" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ValidationGroup="ContactUs" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Enter 10 Digit Valid Phone Number" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                    <%--<input type="tel" class="form-control" placeholder="Your Phone *" name="phone-number" required="">--%>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <asp:TextBox runat="server" MaxLength="100" placeholder="Company" ID="txtCompany" CssClass="form-control"></asp:TextBox>
                                    <%--<input type="text" class="form-control" placeholder="Company *" name="your-name" required="">--%>
                                </div>

                                <div class="col-md-12">
                                    <asp:TextBox ID="txtMessage" TextMode="MultiLine" Rows="10" MaxLength="500" placeholder="Message" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<textarea name="message" cols="40" rows="10" class="form-control" placeholder="Message" required=""></textarea>--%>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Maxmimum 1 MB file size" CssClass="form-control"></asp:FileUpload>
                                </div>
                                <div class="col-md-12">
                                    <asp:LinkButton ID="btnSubmit" ValidationGroup="ContactUs" runat="server" CssClass="pbmit-btn" OnClick="btnSubmit_Click">
                                         <span class="pbmit-button-text">Submit Now</span>
                                         <span class="pbmit-button-icon-wrapper">
                                             <span class="pbmit-button-icon">
                                                 <i class="pbmit-base-icon-black-arrow-1"></i>
                                             </span>
                                         </span>
                                    </asp:LinkButton>
                                    <asp:Label ID="lblThumb" runat="server" Visible="false"></asp:Label>
                                    <%--<a class="pbmit-btn" href="#">
                                        <span class="pbmit-button-text">Submit Now</span>
                                        <span class="pbmit-button-icon-wrapper">
                                            <span class="pbmit-button-icon">
                                                <i class="pbmit-base-icon-black-arrow-1"></i>
                                            </span>
                                        </span>
                                    </a>--%>
                                </div>
                                <div class="col-md-12 col-lg-12 message-status"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

