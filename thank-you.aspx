<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thank-you.aspx.cs" Inherits="thank_you" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .error-content h1{
            font-size: 125px;
    margin-bottom: 125px;
    margin-top: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="error-area">
        <div class="container">
            <div class="row justify-content-center mt-10">
                <div class="col-lg-8">
                    <div class="error-wrap text-center">
                        <div class="error-content">
                            <h1 class="title">ThankYou!</h1>
                        </div>
                        <div class="error-content mt-5 mb-10">
                            <h2 class="title">Our team will reach out you soon</h2>
                            <div class="tg-button-wrap mb-5 mt-5 text-center">
                                <a href="/" class="pbmit-btn ">Go To Home Page
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

