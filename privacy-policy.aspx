<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="privacy-policy.aspx.cs" Inherits="privacy_policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pbmit-title-bar-wrapper {
            margin-bottom: 80px;
        }

        .section-padding {
            position: relative;
            padding: 100px 0px;
        }

            .section-padding h2 {
                font-size: 28px;
                line-height:34px;
            }

            .section-padding ul li {
                position: relative;
                margin-bottom: 20px;
                font-size: 16px;
                padding-left: 20px;
            }

                .section-padding ul li:before {
                    content: "";
                    position: absolute;
                    width: 7px;
                    height: 12px;
                    border-bottom: 2px solid blue;
                    border-right: 2px solid blue;
                    left: 0;
                    top: 5px;
                    transform: rotate(45deg);
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pbmit-title-bar-wrapper" style="background: url(new-img/subban/5.png)">
        <div class="container">
            <div class="pbmit-title-bar-content">
                <div class="pbmit-title-bar-content-inner">
                    <div class="pbmit-tbar">
                        <div class="pbmit-tbar-inner container">
                            <h1 class="pbmit-tbar-title">Privacy policy</h1>
                        </div>
                    </div>
                    <div class="pbmit-breadcrumb">
                        <div class="pbmit-breadcrumb-inner">
                            <span>
                                <a title="" href="#" class="home"><span>Home</span></a>
                            </span>
                            <span class="sep">
                                <i class="pbmit-base-icon-angle-right"></i>
                            </span>
                            <span><span class="post-root post post-post current-item">Privacy policy</span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="privacy">
                        <h1>Your Privacy is Our Priority</h1>
                        <p><strong>Effective Date: 16/01/2025</strong></p>

                        <h2>1. Introduction</h2>
                        <p>ZPROTO ("we," "our," or "us") values the privacy of our users ("you," "your," or "users"). This Privacy Policy explains how we collect, use, disclose, and protect your information when you visit our website <a href="https://www.z-proto.com">www.z-proto.com</a> or use our services.</p>

                        <h2>2. Information We Collect</h2>
                        <p>We collect information to provide better services to our users. This information includes:</p>
                        <ul>
                            <li><strong>Personal Information:</strong> Name, email address, phone number, and other contact details.</li>
                            <li><strong>Usage Data:</strong> Information about how you use our website and services, such as IP address, browser type, operating system, and pages visited.</li>
                            <li><strong>Cookies and Tracking Technologies:</strong> Information collected through cookies and similar tracking technologies.</li>
                        </ul>

                        <h2>3. How We Use Your Information</h2>
                        <p>We use the information we collect for various purposes, including:</p>
                        <ul>
                            <li>To provide and maintain our services.</li>
                            <li>To improve and personalize our website and services.</li>
                            <li>To communicate with you, respond to your inquiries, and provide customer support.</li>
                            <li>To analyze usage patterns and improve our website and services.</li>
                            <li>To comply with legal obligations.</li>
                        </ul>

                        <h2>4. Sharing Your Information</h2>
                        <p>We may share your information in the following situations:</p>
                        <ul>
                            <li>With third-party service providers who perform services on our behalf.</li>
                            <li>When required by law or to comply with legal processes.</li>
                            <li>To protect our rights, property, or safety, and that of our users or the public.</li>
                        </ul>

                        <h2>5. Security of Your Information</h2>
                        <p>We implement appropriate technical and organizational measures to protect your personal information from unauthorized access, use, or disclosure. However, no method of transmission over the internet or electronic storage is completely secure.</p>

                        <h2>6. Your Privacy Rights</h2>
                        <p>Depending on your location, you may have certain rights regarding your personal information, including the right to access, correct, or delete your information. To exercise these rights, please contact us at <a href="mailto:info@first-proto.com">info@first-proto.com</a>.</p>

                        <h2>7. Third-Party Links</h2>
                        <p>Our website may contain links to third-party websites. We are not responsible for the privacy practices of these websites. We encourage you to review the privacy policies of these third-party sites.</p>

                        <h2>8. Changes to This Privacy Policy</h2>
                        <p>We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on our website. You are advised to review this Privacy Policy periodically for any changes.</p>

                        <h2>9. Contact Us</h2>
                        <p>If you have any questions or concerns about this Privacy Policy, please contact us at:</p>
                        <p><strong>Registered Address:</strong></p>
                        <p>
                            ZPROTO Manufacturing Businesses Private Limited.<br>
                            #139, Oxford Towers, HAL II Stage,<br>
                            Indiranagar, Bangalore-560008, India.
                        </p>
                        <p><strong>Phone:</strong> +91</p>
                        <p><strong>Email:</strong> <a href="mailto:info@first-proto.com">info@first-proto.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

