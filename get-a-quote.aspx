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
        height:42px !important;
        padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="contact-us-section-two">
        <div class="container">
            <div class="row">

                <div class="col-md-12 contact-right-col " >
                    <div class="contact-wrap pbmit-bg-color-blackish" style="background:url(new-img/get/get.png);background-position:center;background-size:cover">
                        <div class="pbmit-heading-subheading text-center animation-style2">

                            <h2 class="pbmit-title mb-3">Get A Quote</h2>
                            <p class="text-white">
                                Let get the  conversation started Today.<br>
                                Fill  out the form  on this page or email us directly to request  a quote.

                            </p>
                        </div>
                        <div class="contact-form" method="post" id="contact-form" novalidate="novalidate">
                            <div class="row">
                                <div class="col-sm-12 col-md-6">
                                    <input type="text" class="form-control" placeholder="Full Name *" name="your-name" required="">
                                </div>



                                <div class="col-sm-12 col-md-6">
                                    <input type="email" class="form-control" placeholder="Your Email *" name="email-address" required="">
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" name="phone-number" required="">
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <input type="text" class="form-control" placeholder="Company *" name="your-name" required="">
                                </div>

                                <div class="col-md-12">
                                    <textarea name="message" cols="40" rows="10" class="form-control" placeholder="Message" required=""></textarea>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <input type="file" class="form-control" placeholder="Company *" name="your-name" required="">
                                </div>
                                <div class="col-md-12">
                                    <a class="pbmit-btn" href="#">
                                        <span class="pbmit-button-text">Submit Now</span>
                                        <span class="pbmit-button-icon-wrapper">
                                            <span class="pbmit-button-icon">
                                                <i class="pbmit-base-icon-black-arrow-1"></i>
                                            </span>
                                        </span>
                                    </a>
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

