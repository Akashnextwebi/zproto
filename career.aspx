<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .bg-dark {
            background: #000;
        }

        .pbmit-tab .nav-tabs {
            justify-content: center;
        }

        .tab-content {
            margin-left: 0px;
        }

        .pbmit-column-inner {
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            border-radius: 12px;
        }

        .career-card-img {
            border-radius: 12px;
            overflow: hidden;
        }

            .career-card-img img {
                border-radius: 12px;
            }

        .career-cta {
            text-align: center;
            padding: 20px;
            border: 2px solid #eee;
            border-radius:12px;
            box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
        }
           .career-cta a{
               color:#0c64e8;
           }
            .career-cta p{
                font-size:18px;
                font-weight:600;
                margin-top:20px;
            }
        .section-padding{
            padding:50px 0px;
        }
        @media (min-width: 320px) and (max-width: 767px) {
    .page-content {
        padding: 60px 0px 0px;
    }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pbmit-title-bar-wrapper" style="background: url(new-img/career.png)">
        <div class="container">
            <div class="pbmit-title-bar-content">
                <div class="pbmit-title-bar-content-inner">
                    <div class="pbmit-tbar">
                        <div class="pbmit-tbar-inner container">
                            <h1 class="pbmit-tbar-title">Career</h1>
                        </div>
                    </div>
                    <div class="pbmit-breadcrumb">
                        <div class="pbmit-breadcrumb-inner">
                            <span>
                                <a title="" href="/" class="home"><span>Home</span></a>
                            </span>
                            <span class="sep">
                                <i class="pbmit-base-icon-angle-right"></i>
                            </span>
                            <span><span class="post-root post post-post current-item">Career</span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content pt-5">

        <!-- Tab Start -->
        <section class="tab-section-one section-md">
            <div class="tab-wrap">
                <div class="container">
                    <div class="row pbmit-posts-wrapper justify-content-center">

                        <div class="pbmit-contentbox col-md-10">
                            <div class="pbmit-heading-subheading animation-style4 text-center">

                                <h2 class="pbmit-title">Join a Team of Innovators and Achievers</h2>
                                <div class="pbmit-heading-desc">
                                    At <strong>ZPROTO,</strong> we believe that our success is driven by the talent, dedication, and innovation of 
our team. We are committed to fostering a dynamic and inclusive work environment where 
creativity thrives, collaboration is encouraged, and each team member can make a meaningful 
impact.						
                                </div>
                            </div>

                            <div class="img-fluid round-20">
                                <img src="new-img/career/cc1.png" class="img-fluid round-20" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section classs="section-padding bg-dark">
            <div class="container">
                <div class="pbmit-ele-header-align-center">
                    <div class="pbmit-heading-subheading animation-style2 text-center">

                        <h2 class="pbmit-title">Our Culture</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-11">
                        <div class="pbmit-tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#tab-2-1" aria-selected="true" role="tab">
                                        <span>Innovation-Driven</span>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-2-2" aria-selected="false" role="tab" tabindex="-1">
                                        <span>Collaboration</span>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-2-3" aria-selected="false" role="tab" tabindex="-1">
                                        <span>Excellence</span>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-2-4" aria-selected="false" role="tab" tabindex="-1">
                                        <span>Integrity</span>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-2-5" aria-selected="false" role="tab" tabindex="-1">
                                        <span>Growth and Development
                                        </span>
                                    </a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" data-bs-toggle="tab" href="#tab-2-6" aria-selected="false" role="tab" tabindex="-1">
                                        <span>Work-Life Balance
                                        </span>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane show active" id="tab-2-1" role="tabpanel">
                                    <div class="pbmit-column-inner">
                                        <div class="pbmit-tab-content-inner">
                                            <div class="row pbmit-tab-contents">
                                                <div class="col-md-6">
                                                    <div class="career-card-img">
                                                        <img src="new-img/career/1.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="career-card-content">
                                                        <h3>Innovation-Driven</h3>
                                                        <p>
                                                            We are passionate about pushing the boundaries of manufacturing technology. Our culture is 
centered around innovation, where we encourage creative problem-solving and continuous 
improvement to stay at the forefront of the industry. 
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2-2" role="tabpanel">
                                    <div class="pbmit-column-inner">
                                        <div class="pbmit-tab-content-inner">
                                            <div class="row pbmit-tab-contents">
                                                <div class="col-md-6">
                                                    <div class="career-card-img">
                                                        <img src="new-img/career/1.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="career-card-content">
                                                        <h3>Collaboration</h3>
                                                        <p>
                                                            Teamwork is at the heart of what we do. We believe in the power of diverse perspectives and 
work together across departments to achieve common goals. Open communication and mutual 
respect are key to our collaborative approach. 
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2-3" role="tabpanel">
                                    <div class="pbmit-column-inner">
                                        <div class="pbmit-tab-content-inner">
                                            <div class="row pbmit-tab-contents">
                                                <div class="col-md-6">
                                                    <div class="career-card-img">
                                                        <img src="new-img/career/1.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="career-card-content">
                                                        <h3>Excellence</h3>
                                                        <p>
                                                            We are dedicated to achieving excellence in everything we do. From our manufacturing 
processes to customer service, we strive for the highest standards and take pride in delivering 
exceptional results. 
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2-4" role="tabpanel">
                                    <div class="pbmit-column-inner">
                                        <div class="pbmit-tab-content-inner">
                                            <div class="row pbmit-tab-contents">
                                                <div class="col-md-6">
                                                    <div class="career-card-img">
                                                        <img src="new-img/career/1.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="career-card-content">
                                                        <h3>Integrity</h3>
                                                        <p>
                                                            We are passionate about pushing the boundaries of manufacturing technology. Our culture is 
centered around innovation, where we encourage creative problem-solving and continuous 
improvement to stay at the forefront of the industry. 
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2-5" role="tabpanel">
                                    <div class="pbmit-column-inner">
                                        <div class="pbmit-tab-content-inner">
                                            <div class="row pbmit-tab-contents">
                                                <div class="col-md-6">
                                                    <div class="career-card-img">
                                                        <img src="new-img/career/1.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="career-card-content">
                                                        <h3>Growth and Development</h3>
                                                        <p>
                                                            We support the growth and development of our employees through continuous learning 
opportunities, mentorship programs, and career advancement. We are invested in your 
professional journey and success.  
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab-2-6" role="tabpanel">
                                    <div class="pbmit-column-inner">
                                        <div class="pbmit-tab-content-inner">
                                            <div class="row pbmit-tab-contents">
                                                <div class="col-md-6">
                                                    <div class="career-card-img">
                                                        <img src="new-img/career/1.png" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="career-card-content">
                                                        <h3>Work-Life Balance</h3>
                                                        <p>
                                                            We understand the importance of balancing work with personal life. ZPROTO offers flexible 
working arrangements and a supportive environment to help you achieve a healthy work-life 
balance. 
 
                                                        </p>
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
            </div>
        </section>

        <section class="section-md pbmit-element-timeline-style-1 pbmit-bg-color-blackish overflow-hidden">
            <div class="container">
                <div class="pbmit-header-area">
                    <div class="pbmit-heading-subheading animation-style2">
                        <h4 class="pbmit-subtitle">Careers at ZPROTO
                        </h4>
                        <h2 class="pbmit-title">Why Work with Us?
                        </h2>
                    </div>
                    <div class="history-wrapper d-none">
                        <div class="history-swiper-arrow d-inline-flex flex-row-reverse"></div>
                    </div>
                </div>
            </div>
            <div class="swiper-slider" data-arrows-class="history-swiper-arrow" data-loop="false" data-autoplay="false" data-dots="false" data-arrows="true" data-columns="4" data-margin="30" data-effect="slide">
                <div class="swiper-wrapper">
                    <div class="pbmit-timeline-wrapper pbmit-slide-even swiper-slide">
                        <!-- Slide1 -->
                        <div class="pbmit-same-height steps-media pbmit-feature-image">
                            <img src="new-img/car/1.png" class="img-fluid" alt="">
                        </div>
                        <div class="steps-dot">
                            <span class="steps-dot-line"></span>
                            <span class="dot"></span>
                        </div>
                        <div class="pbmit-same-height steps-content_wrap">
                            <h3 class="pbmit-timeline-title">Challenging Projects</h3>
                            <p class="pbmit-timeline-desc">
                                Work on exciting and cutting-edge projects that push the 
limits of manufacturing technology.
                            </p>
                        </div>
                    </div>
                    <div class="pbmit-timeline-wrapper swiper-slide">
                        <!-- Slide2 -->
                        <div class="pbmit-same-height steps-media pbmit-feature-image">
                            <img src="new-img/car/2.png" class="img-fluid" alt="">
                        </div>
                        <div class="steps-dot">
                            <span class="steps-dot-line"></span>
                            <span class="dot"></span>
                        </div>
                        <div class="pbmit-same-height steps-content_wrap">
                            <h3 class="pbmit-timeline-title">Supportive Environment</h3>
                            <p class="pbmit-timeline-desc">
                                Be part of a team that values your contributions and 
supports your professional growth.
                            </p>
                        </div>
                    </div>
                    <div class="pbmit-timeline-wrapper pbmit-slide-even swiper-slide">
                        <!-- Slide3 -->
                        <div class="pbmit-same-height steps-media pbmit-feature-image">
                            <img src="new-img/car/3.png" class="img-fluid" alt="">
                        </div>
                        <div class="steps-dot">
                            <span class="steps-dot-line"></span>
                            <span class="dot"></span>
                        </div>
                        <div class="pbmit-same-height steps-content_wrap">
                            <h3 class="pbmit-timeline-title">Competitive Benefits</h3>
                            <p class="pbmit-timeline-desc">
                                Enjoy a comprehensive benefits package, including health 
insurance, retirement plans, and more.
                            </p>
                        </div>
                    </div>
                    <div class="pbmit-timeline-wrapper swiper-slide">
                        <!-- Slide4 -->
                        <div class="pbmit-same-height steps-media pbmit-feature-image">
                            <img src="new-img/car/4.png" class="img-fluid" alt="">
                        </div>
                        <div class="steps-dot">
                            <span class="steps-dot-line"></span>
                            <span class="dot"></span>
                        </div>
                        <div class="pbmit-same-height steps-content_wrap">
                            <h3 class="pbmit-timeline-title">Career Development</h3>
                            <p class="pbmit-timeline-desc">
                                Take advantage of opportunities for training, development, 
and career progression.
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="career-cta">
                            <h3>How to Apply
                            </h3>

                            <p>
                                Reach out to us at <a href="mailto:careers@Z-PROTO.com">careers@Z-PROTO.com</a>.<br /> If your profile matches with our 
requirement, our talent acquisition team will get back to you
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

