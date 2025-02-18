<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pbmit-bg-color-blackish .contact-form .form-control {
            background: #fff;
            color: #000;
            border: 1px solid #000;
        }

        section.contact-us-section-two {
            padding: 20px 0px;
        }

        .contact-form {
            padding: 30px;
            background: #fff;
            border: 1px solid #eee;
            border-radius: 12px;
            box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
        }

        .contact-us {
            padding: 50px 0px;
        }
       textarea.form-control{
     color: #000;
     background: #fff;
 }
       textarea.form-control::placeholder {
            color: #000 !important;
            background: #fff !important;
        }
        @media (min-width: 320px) and (max-width: 767px) {
            section.contact-us-section-two {
                padding: 20px 0px 40px !important;
            }
            .contact-us {
    padding: 0px 0px 50px;
}
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pbmit-title-bar-wrapper" style="background: url(new-img/c1.png)">
        <div class="container">
            <div class="pbmit-title-bar-content">
                <div class="pbmit-title-bar-content-inner">
                    <div class="pbmit-tbar">
                        <div class="pbmit-tbar-inner container">
                            <h1 class="pbmit-tbar-title">Contact Us</h1>
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
                            <span><span class="post-root post post-post current-item">Contact Us</span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Title Bar End-->

    <!-- Contact Us Content -->
    <div class="page-content">

        <section class="about-section-two section-lgb">
            <div class="container">
                <div class="row justify-content-center">

                    <div class="col-md-12 col-xl-8">
                        <div class="about-wrap mt-0">
                            <div class="pbmit-heading-subheading text-center animation-style2">

                                <h2 class="pbmit-title">We're Here to Help You Achieve Manufacturing Excellence</h2>
                                <div class="pbmit-heading-desc">
                                    At ZPROTO, we value clear and effective communication with our clients. Whether you have 
questions about our services, need a quote, or want to discuss your next project, our team is 
ready to assist you.
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact-us-form Start -->
        <section class=" contact-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xl-6">
                        <div class="contat-form">
                            <div class="pbmit-ihbox pbmit-ihbox-style-16">
                                <div class="pbmit-heading-subheading animation-style4">
                                    <h4 class="pbmit-subtitle">Contact Form
                                    </h4>
                                    <h2 class="pbmit-title">How can help you?</h2>
                                    <div class="pbmit-heading-desc">
                                        If you prefer, you can also reach out to us directly using the contact form below. Please provide 
your details, and we will respond as soon as possible.							
                                    </div>
                                </div>
                                <div class="pbmit-ihbox-contents m-0">
                                    <h6>Registered Address</h6>
                                    <div class="pbmit-heading-desc">
                                        ZPROTO Manufacturing Businesses Private Limited.
                                        <br />
                                        #139, Oxford Towers, HAL II Stage
                                        <br />
                                        Indirangar, Bangalore-560008 India
                                    </div>
                                    <div class="pbmit-element-subtitle">
                                        <ul>

                                            <li>
                                                <span>Phone :</span>
                                                +91 96068 69650
												</li>
                                            <li>
                                                <span>Email :</span>
                                                <a href="#" class="__cf_email__" data-cfemail="f091949d999eb080929d999e969f84959398de939f9d" contenteditable="false" style="cursor: pointer;">info@z-proto.com</a>
                                            </li>
                                            <li>
                                                <span>Email :</span>
                                                <a href="#" class="__cf_email__" data-cfemail="f091949d999eb080929d999e969f84959398de939f9d" contenteditable="false" style="cursor: pointer;">sales@z-proto.com</a>
                                            </li>
                                            <li>
                                                <span>Email :</span>
                                                <a href="#" class="__cf_email__" data-cfemail="f091949d999eb080929d999e969f84959398de939f9d" contenteditable="false" style="cursor: pointer;">support@z-proto.com</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="pbmit-ihbox-btn">
                                        <a href="https://maps.app.goo.gl/yvLHdM6SfZQJYx8x8" contenteditable="false" style="cursor: pointer;">
                                            <span class="pbmit-button-text">View on google map</span>
                                            <span class="pbmit-button-icon-wrapper">
                                                <span class="pbmit-button-icon">
                                                    <i class="pbmit-base-icon-black-arrow-1"></i>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-xl-6">

                        <div class="contact-form">
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" placeholder="Your Name *" name="your-name" required="">
                                </div>
                                <div class="col-sm-12">
                                    <input type="email" class="form-control" placeholder="Your Email *" name="email-address" required="">
                                </div>
                                <div class="col-sm-12">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" name="phone-number" required="">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" placeholder="Company" name="Company" required="">
                                </div>
                                <div class="col-md-12">
                                    <textarea name="message" cols="40" rows="10" class="form-control" placeholder="Message" required=""></textarea>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox">
                                        <label class="form-check-label">
                                            Save my name, email, and website in this browser for the next time I comment.
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button class="pbmit-btn">
                                        <span class="pbmit-button-text">Submit Now</span>
                                        <span class="pbmit-button-icon-wrapper">
                                            <span class="pbmit-button-icon">
                                                <i class="pbmit-base-icon-black-arrow-1"></i>
                                            </span>
                                        </span>
                                    </button>
                                </div>
                                <div class="col-md-12 col-lg-12 message-status"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--  Contact-us-form End -->
        <section class="contact-us-section-two">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 contact-right-col">
                        <div class="contact-wrap pbmit-bg-color-blackish">
                            <div class="pbmit-heading-subheading text-center animation-style2">

                                <h2 class="pbmit-title mb-3">Schedule a Consultation</h2>
                                <p>
                                    To discuss your manufacturing needs and explore how ZPROTO can support your projects, 
Schedule a Consultation with one of our experts. We look forward to learning more about your 
goals and providing personalized solutions.
                                </p>
                            </div>
                            <div class="contact-form" >
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="First Name *" name="your-name" required="">
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Last Name *" name="your-name" required="">
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Company *" name="your-name" required="">
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <input type="Date" class="form-control" placeholder="Date & Time *" name="your-name" required="">
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <input type="email" class="form-control" placeholder="Your Email *" name="email-address" required="">
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <input type="tel" class="form-control" placeholder="Your Phone *" name="phone-number" required="">
                                    </div>

                                    <div class="col-md-12">
                                        <textarea name="message" cols="40" rows="10" class="form-control" placeholder="Message" required=""></textarea>
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
        <!-- Iframe -->
        <section class="iframe-section section-lgb">
            <div class="container">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3518.6184898265483!2d77.6468737!3d12.9590504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15000969e109%3A0xd7b22075e17cd23f!2sZPROTO!5e1!3m2!1sen!2sin!4v1739855985559!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>            </div>
        </section>
        <!-- Iframe End-->

    </div>
</asp:Content>

