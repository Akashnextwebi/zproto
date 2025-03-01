<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .banner {
            position: relative;
            width: 100%;
            height: 100vh;
            overflow: hidden;
        }

            .banner video {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                min-width: 100%;
                min-height: 100%;
                width: auto;
                height: auto;
                object-fit: cover;
            }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay for better text visibility */
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-90%, -30%);
            text-align: left;
            color: white;
        }

            .content h1 {
                font-size: 65px;
                line-height: 80px;
                color: #fff;
                margin-bottom: 15px;
            }

            .content p {
                font-size: 18px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content">
        <%--  <div class="pbmit-slider-area pbmit-slider-one">
    <div class="swiper-slider" data-autoplay="false" data-loop="false"
        data-dots="true" data-arrows="false" data-columns="1" data-margin="0"
        data-effect="fade">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="pbmit-slider-item">
                    <div class="pbmit-slider-bg"
                        style="background-image: url(./new-img/banner/1.png);">
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="pbmit-slider-content">
                                    <h5 class="pbmit-sub-title transform-top transform-delay-1">Zproto</h5>
                                    <h2 class="pbmit-title transform-left transform-delay-3">Pioneering Excellence  in 
                                        <br>
                                        Advanced Manufacturing</h2>
                                    <div class="pbmit-desc transform-bottom transform-delay-4">
                                        Zproto represents a groundbreaking step in advanced manufacturing innovation.
                                    </div>
                                    <div class="pbmit-button transform-bottom transform-delay-5">
                                        <a class="pbmit-btn" href="contact-us.aspx">
                                            <span class="pbmit-button-text">Contact Us</span>
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
                </div>
            </div>
            <div class="swiper-slide">
                <div class="pbmit-slider-item">
                    <div class="pbmit-slider-bg"
                        style="background-image: url(./new-img/banner/2.png);">
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="pbmit-slider-content">
                                    <h5 class="pbmit-sub-title transform-top transform-delay-1">Zproto
                                    </h5>
                                    <h2 class="pbmit-title transform-left transform-delay-3">Redefining Manufacturing 
                                        <br>
                                        Excellence</h2>
                                    <div class="pbmit-desc transform-bottom transform-delay-4">
                                        Zproto marks the beginning of a new era in precision-driven manufacturing.








                                    </div>
                                    <div class="pbmit-button transform-bottom transform-delay-5">
                                        <a class="pbmit-btn" href="contact-us.aspx">
                                            <span class="pbmit-button-text">Contact Us</span>
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
                </div>
            </div>

        </div>
    </div>
</div>--%>
        <div class="banner">
            <video autoplay muted loop playsinline>
                <source src="new-img/banner.mp4" type="video/mp4">
            </video>
            <div class="overlay"></div>
            <div class="content">
                <h1>Simplifying 
                    <br />
                    On-Demand Manufacturing</h1>
                <p>Effortlessly transforming designs into reality, we deliver precision-engineered solutions with speed, agility, and reliability, empowering industries worldwide.</p>
            </div>
        </div>
        <!-- Ihbox Start -->

        <!-- Ihbox end -->

        <!-- Tab Start -->
        <section class="tab-section-one section-md">
            <div class="tab-wrap">
                <div class="container">
                    <div class="row pbmit-posts-wrapper">
                        <div class="pbmit-left-col col-md-6">
                            <div class="tab-image"></div>
                        </div>
                        <div class="pbmit-contentbox col-md-6">
                            <div class="pbmit-heading-subheading animation-style4">
                                <h4 class="pbmit-subtitle">Welcome to ZPROTO

                                </h4>
                                <h2 class="pbmit-title">Manufacturing Unlimited</h2>
                                <div class="pbmit-heading-desc">
                                    At ZPROTO, we are redefining the future of custom manufacturing with our cutting-edge digital 
platform. We believe in "Manufacturing Unlimited," where technology meets innovation to 
deliver unparalleled precision, efficiency, and flexibility. From conceptualization to production, 
we offer a seamless experience that transforms your ideas into reality.
                                </div>

                            </div>

                            <a class="pbmit-btn " href="about-us.aspx">
                                <span class="pbmit-button-text">Get Started</span>
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
        </section>
        <section class="tab-section-one section-md">
            <div class="tab-wrap">
                <div class="container">
                    <div class="row pbmit-posts-wrapper">
                        <div class="pbmit-contentbox col-md-6">
                            <div class="pbmit-heading-subheading animation-style4">
                                <h4 class="pbmit-subtitle">Digital Manufacturing

                                </h4>
                                <h2 class="pbmit-title">Innovative Solutions for Modern Needs</h2>
                                <div class="pbmit-heading-desc">
                                    Our advanced digital manufacturing platform integrates the latest technologies to provide 
comprehensive solutions. Whether you need rapid prototyping or full-scale production, our 
digital approach ensures high-quality results with speed and accuracy
                                </div>

                            </div>


                        </div>
                        <div class="pbmit-left-col col-md-6">
                            <div class="tab-image1"></div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- Tab end -->
        <section class="marquee-section-two">
            <div class="container-fluid p-0">
                <div class="swiper-slider marquee">
                    <div class="swiper-wrapper">
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="CNC Machining">CNC Machining</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Sheetmetal">Sheetmetal</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Injection Molding">Injection Molding</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Casting">Casting</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Forging">Forging</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Fabrication">Fabrication</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="3D Printing">3D Printing</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Wire Harness Manufacturing">Wire Harness Manufacturing</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="PCB Assembly">PCB Assembly</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Box Build">Box Build</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Electro-Mechanical Systems">Electro-Mechanical Systems</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Built to Spec">Built to Spec</h2>
                            </div>
                        </article>
                        <article class="pbmit-marquee-effect-style-1 swiper-slide">
                            <div class="pbmit-tag-wrapper">
                                <h2 class="pbmit-element-title" data-text="Reverse Engineering">Reverse Engineering</h2>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </section>
        <!-- Service Start -->
        <section
            class="service-section-one section-md pbmit-bg-color-global pbmit-extend-animation">
            <div class="service-wrap">
                <div class="container pbmit-col-stretched-yes pbmit-col-right">
                    <div class="position-relative">
                        <div class="pbmit-heading-subheading animation-style2">
                            <h4 class="pbmit-subtitle">Our Capabilities
                            </h4>
                            <h2 class="pbmit-title">Transforming Ideas into Reality</h2>
                            <p class="text-white mt-2">ZPROTO offers a wide range of manufacturing services to meet diverse needs:</p>
                        </div>
                    </div>
                    <div class="pbmit-col-stretched-right">
                        <div class="swiper-slider" data-autoplay="true" data-loop="true"
                            data-dots="true" data-arrows="false" data-columns="3.6"
                            data-margin="30" data-effect="slide">
                            <div class="swiper-wrapper">
                                <!-- Slide1CNC Machining -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/camp/1.png" alt>
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="cnc-machining.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="cnc-machining.aspx">CNC Machining</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="cnc-machining.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="cnc-machining.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide2Sheetmetal -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/sheetmetal.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="sheet-metal.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="sheet-metal.aspx">Sheetmetal Fabrication</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="sheet-metal.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="sheet-metal.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide3 Injection Molding-->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/camp/4.png" alt>
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="injection-molding.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="injection-molding.aspx">Injection Molding</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="injection-molding.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="injection-molding.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide4 Casting-->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/camp/3.png" alt>
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="casting.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="casting.aspx" rel="tag">Casting</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="casting.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="casting.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide5Forging -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/farging.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="forging.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="forging.aspx">Forging</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="forging.aspxx"
                                                title="Forging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="forging.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide6Fabrication -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/fabrication.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="fabrication.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="fabrication.aspx">Fabrication</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="fabrication.aspx"
                                                title="Fabrication">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="fabrication.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide7 3dpaint -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/camp/5.png" alt>
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="3d-printing.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="3d-printing.aspx">3D Printing</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="3d-printing.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="3d-printing.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide8 Wire Harness Manufacturing -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/wire.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="wire-harness.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="wire-harness.aspx">Wire Harness Manufacturing</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="wire-harness.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="wire-harness.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide9 PCB Assembly -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/pcb.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="pcb-assembly.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="pcb-assembly.aspx">PCB Assembly</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="pcb-assembly.aspx"
                                                title="Home Charging">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="pcb-assembly.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide10  Box Build-->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/box.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="box-build.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="box-build.aspx">Box Build</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="box-build.aspx"
                                                title="Box Build">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="box-build.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slid11 Electro-Mechanical Systems -->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/elemech.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="electro-mechanical-assembly.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="electro-mechanical-assembly.aspx">Electro-Mechanical Systems</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="electro-mechanical-assembly.aspx"
                                                title="Electro-Mechanical Systems">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="electro-mechanical-assembly.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide12  Built to Spec-->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/builtspec.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="built-to-spec.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="built-to-spec.aspx">Built to Spec</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="built-to-spec.aspx"
                                                title="Built to Spec">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="built-to-spec.aspx"></a>
                                    </article>
                                </div>
                                <!-- Slide13  Reverse Engineering-->
                                <div class="swiper-slide">
                                    <article class="pbmit-service-style-2">
                                        <div class="pbminfotech-post-item">
                                            <div class="pbminfotech-box-content">
                                                <div class="pbmit-service-image-wrapper">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="new-img/electronics/rev-engg.png" />
                                                        </div>
                                                    </div>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="119.09"
                                                        height="112.42" viewbox="0 0 119.09 112.42">
                                                        <path
                                                            d="M.05,110.13a85.42,85.42,0,0,0,20.78-2c12.23-2.83,20.86-9.88,25.28-21.69,2.55-6.82,4.71-13.79,7.13-20.66C57,55,64.39,48,75.55,45.07c5-1.31,9.92-2.7,14.82-4.26,17.66-5.65,25.37-15.63,26.55-34.2.14-2.16.09-4.32.13-6.48,2.5-.63,2,1.17,2,2.5q0,17.75,0,35.5v74q-57.75,0-115.5-.07C2.34,112.05-.42,113.66.05,110.13Z">
                                                        </path>
                                                    </svg>
                                                </div>
                                                <div class="pbmit-service-icon">
                                                    <i
                                                        class="pbmit-evgrid-icon pbmit-evgrid-icon-charging-station"></i>
                                                </div>
                                                <div class="pbmit-content-box">
                                                    <div class="pbmit-serv-cat">
                                                        <a href="reverse-engineering.aspx" rel="tag">Capabilities</a>
                                                    </div>
                                                    <h3 class="pbmit-service-title">
                                                        <a href="reverse-engineering.aspx">Reverse Engineering</a>
                                                    </h3>
                                                    <div class="pbmit-service-description">
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="pbmit-service-btn" href="reverse-engineering.aspx"
                                                title="Reverse Engineering">
                                                <span class="pbmit-button-icon-wrapper">
                                                    <span class="pbmit-button-icon">
                                                        <i class="pbmit-base-icon-black-arrow-1"></i>
                                                    </span>
                                                </span>
                                            </a>
                                        </div>
                                        <a class="pbmit-link" href="reverse-engineering.aspx"></a>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Service End -->

        <!-- About start -->
        <section class="about-section-one section-md d-none">
            <div class="about-contant">
                <div class="container">
                    <div class="pbmit-ele-header-align-center">
                        <div class="mb-5 animation-style2 text-center">

                            <h2 class="pbmit-title">Why choose ZPROTO?</h2>
                        </div>
                    </div>
                    <div class="row gy-4 gy-lg-0">
                        <div class="col-md-5 about-one-col-1 ">
                            <div class="about-widget-wrap">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Why Fristproto</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">Scalable Charging Solutions
											that<br>
                                                Grows with you.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 about-one-col-2">
                            <div class="about-fid-wrap pbmit-bg-color-global">
                                <div class="pbminfotech-ele-fid-style-5">
                                    <div class="pbmit-fld-contents">
                                        <h4 class="pbmit-fid-inner">
                                            <span class="pbmit-fid-before"></span>
                                            <span class="pbmit-number-rotate numinate"
                                                data-appear-animation="animateDigits" data-from="0" data-to="500"
                                                data-interval="5" data-before data-before-style data-after
                                                data-after-style>500</span>
                                            <span class="pbmit-fid"><sup>K</sup></span>
                                        </h4>
                                        <div class="pbmit-fid-icon-title">
                                            <h3 class="pbmit-fid-title">Our happy customers</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 about-one-col-3">
                        </div>
                    </div>
                    <div class="row g-0 new-top">
                        <div class="col-md-3 about-one-bottom-col-1">
                            <div class="ihbox-wrap">
                                <div class="ihbox-background-overlay"></div>
                                <div class="pbmit-ihbox-style-12">
                                    <div class="pbmit-ihbox-headingicon">
                                        <div class="pbmit-ihbox-icon">
                                        </div>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">How outgrid Transformed Our
											Business.</h2>
                                            <div class="pbmit-ihbox-btn">
                                                <a class="pbmit-btn pbmit-btn-white"
                                                    href="javascript:void(0);">
                                                    <span class="pbmit-button-text">Read Case Study</span>
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
                        </div>
                        <div class="col-md-4 about-one-col-2">
                            <div class="about-fid-wrap pbmit-bg-color-global">
                                <div class="pbminfotech-ele-fid-style-5">
                                    <div class="pbmit-fld-contents">
                                        <h4 class="pbmit-fid-inner">
                                            <span class="pbmit-fid-before"></span>
                                            <span class="pbmit-number-rotate numinate"
                                                data-appear-animation="animateDigits" data-from="0" data-to="12"
                                                data-interval="5" data-before data-before-style data-after
                                                data-after-style>12</span>
                                            <span class="pbmit-fid"><sup>+</sup></span>
                                        </h4>
                                        <div class="pbmit-fid-icon-title">
                                            <h3 class="pbmit-fid-title">Years of experience in
the business</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 about-one-bottom-col-3">
                            <div class="about-wrap">
                                <div class="about-widget">
                                    <div class="pbmit-custom-heading -align animation-style4">
                                        <h2 class="pbmit-element-title">Optimize your energy usage
                                            <br>
                                            and
										save on costs.</h2>
                                    </div>
                                </div>
                                <div class="about-one-button">
                                    <a class="pbmit-btn pbmit-btn-blackish" href="javascript:void(0)">
                                        <span class="pbmit-button-text">Know More</span>
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
            </div>
        </section>
        <!-- About End -->
        <section class="portfolio-section-two section-md pbmit-extend-animation">
            <div class="container pbmit-col-stretched-yes pbmit-col-right">
                <div class="portfolio-wrap">
                    <div class="position-relative">
                        <div class="pbmit-heading-subheading animation-style2">
                            <div class="pbmit-hs-left">
                                <h4 class="pbmit-subtitle">
                                    <span></span>
                                    Industries We Serve
                                </h4>
                                <h2 class="pbmit-title">Tailored Solutions for Your Sector</h2>
                                <p class="mt-2 text-dark">We provide specialized manufacturing solutions across various industries:</p>
                            </div>

                        </div>
                        <div class="portfolio-wrapper">
                            <div class="portfolio-swiper-arrow d-inline-flex flex-row-reverse"></div>
                        </div>
                    </div>
                    <section class="static-box-section-three pbmit-element-static-box-style-1">
                        <div class="container-fluid">
                            <div class="row g-0 new-flex d-lg-flex d-none">
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/1.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/1.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Aerospace & Defence</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Aerospace & Defence</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="aerospace-and-defence.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="aerospace-and-defence.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/2.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/2.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Electronics</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Electronics</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="electronics.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="electronics.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/3.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/3.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Drones</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Drones</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="drones.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="drones.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/4.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/5.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Automotive & EV</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Automotive & EV</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="automotive-and-ev.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="automotive-and-ev.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/5.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/5.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Medical Devices</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Medical Devices</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="medical-devices.aspx">
                                                    <span class="pbmit-button-text">Industrial Automation</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="medical-devices.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/6.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/6.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Industrial Automation</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Industrial Automation</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="industrial-automation.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="industrial-automation.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/7.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/7.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Infrastructure</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Infrastructure</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="infrastructure.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="infrastructure.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/8.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/8.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Telecommunication</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Telecommunication</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="telecommunications.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="telecommunications.aspx"></a>
                                    </div>
                                </article>
                                <article class="pbmit-static-box-style-1">
                                    <div class="pbmit-staticbox-wrapper">
                                        <div class="pbmit-bg-imgbox" style="background-image: url(new-img/ind/9.png)">
                                            <div class="pbmit-img">
                                                <img src="new-img/ind/9.png" alt="">
                                            </div>
                                            <h4 class="pbmit-static-box-title">Green Energy</h4>
                                        </div>
                                        <div class="pbmit-content-box">
                                            <div class="pbmit-content-inner">
                                                <div class="pbmit-ihbox-icon">
                                                </div>
                                                <h4 class="pbmit-static-box-title">Green Energy</h4>
                                            </div>
                                            <div class="pbmit-static-btn">
                                                <a href="green-energy.aspx">
                                                    <span class="pbmit-button-text">View Detail</span>
                                                    <span class="pbmit-button-icon-wrapper">
                                                        <span class="pbmit-button-icon">
                                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                                        </span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="green-energy.aspx"></a>
                                    </div>
                                </article>

                            </div>
                            <div class="row d-lg-none d-block">
                                <div class="pbmit-col-stretched-right">
                                    <div class="swiper-slider" data-arrows-class="portfolio-swiper-arrow" data-autoplay="false" data-loop="false" data-dots="false" data-arrows="true" data-columns="3.6" data-margin="30" data-effect="slide">
                                        <div class="swiper-wrapper">
                                            <!-- Slide1 -->
                                            <article class="pbmit-portfolio-style-1 swiper-slide">
                                                <div class="pbminfotech-post-content">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="images/homepage-2/portfolio/Aerospace.jpg" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="pbminfotech-box-content">
                                                        <div class="pbminfotech-titlebox">
                                                            <div class="pbmit-port-cat">
                                                                <a href="aerospace-and-defence.aspx" rel="tag">Industries</a>
                                                            </div>
                                                            <h3 class="pbmit-portfolio-title">
                                                                <a href="aerospace-and-defence.aspx">Aerospace & Defense</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <a class="pbmit-link" href="aerospace-and-defence.aspx"></a>
                                                </div>
                                            </article>
                                            <!-- Slide2 -->
                                            <article class="pbmit-portfolio-style-1 swiper-slide">
                                                <div class="pbminfotech-post-content">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="images/homepage-2/portfolio/Medical.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="pbminfotech-box-content">
                                                        <div class="pbminfotech-titlebox">
                                                            <div class="pbmit-port-cat">
                                                                <a href="medical-devices.aspx" rel="tag">Industries</a>
                                                            </div>
                                                            <h3 class="pbmit-portfolio-title">
                                                                <a href="medical-devices.aspx">Medical Devices</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <a class="pbmit-link" href="medical-devices.aspx"></a>
                                                </div>
                                            </article>
                                            <!-- Slide3 -->
                                            <article class="pbmit-portfolio-style-1 swiper-slide">
                                                <div class="pbminfotech-post-content">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="images/homepage-2/portfolio/Automative.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="pbminfotech-box-content">
                                                        <div class="pbminfotech-titlebox">
                                                            <div class="pbmit-port-cat">
                                                                <a href="automotive-and-ev.aspx" rel="tag">Industries</a>
                                                            </div>
                                                            <h3 class="pbmit-portfolio-title">
                                                                <a href="automotive-and-ev.aspx">Automotive & EV</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <a class="pbmit-link" href="automotive-and-ev.aspx"></a>
                                                </div>
                                            </article>
                                            <!-- Slide4 -->
                                            <article class="pbmit-portfolio-style-1 swiper-slide">
                                                <div class="pbminfotech-post-content">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="images/homepage-2/portfolio/Industrial.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="pbminfotech-box-content">
                                                        <div class="pbminfotech-titlebox">
                                                            <div class="pbmit-port-cat">
                                                                <a href="industrial-automation.aspx" rel="tag">Industries</a>
                                                            </div>
                                                            <h3 class="pbmit-portfolio-title">
                                                                <a href="industrial-automation.aspx">Industrial Automation</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <a class="pbmit-link" href="industrial-automation.aspx"></a>
                                                </div>
                                            </article>
                                            <!-- Slide5 -->
                                            <article class="pbmit-portfolio-style-1 swiper-slide">
                                                <div class="pbminfotech-post-content">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="images/homepage-2/portfolio/Telecommunication.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="pbminfotech-box-content">
                                                        <div class="pbminfotech-titlebox">
                                                            <div class="pbmit-port-cat">
                                                                <a href="telecommunications.aspx" rel="tag">Industries</a>
                                                            </div>
                                                            <h3 class="pbmit-portfolio-title">
                                                                <a href="telecommunications.aspx">Telecommunications</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <a class="pbmit-link" href="telecommunications.aspx"></a>
                                                </div>
                                            </article>
                                            <!-- Slide6 -->
                                            <article class="pbmit-portfolio-style-1 swiper-slide">
                                                <div class="pbminfotech-post-content">
                                                    <div class="pbmit-featured-img-wrapper">
                                                        <div class="pbmit-featured-wrapper">
                                                            <img src="images/homepage-2/portfolio/Drone.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="pbminfotech-box-content">
                                                        <div class="pbminfotech-titlebox">
                                                            <div class="pbmit-port-cat">
                                                                <a href="drones.aspx" rel="tag">Industries</a>
                                                            </div>
                                                            <h3 class="pbmit-portfolio-title">
                                                                <a href="drones.aspx">Drones</a>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <a class="pbmit-link" href="drones.aspx"></a>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <section class="about-section-one section-md">
            <div class="about-contant">
                <div class="container">
                    <div class="pbmit-ele-header-align-center">
                        <div class="pbmit-heading-subheading animation-style2 text-center">
                            <h4 class="pbmit-subtitle">
                                <span></span>
                                Making mobility sustainable
                            </h4>
                            <h2 class="pbmit-title">Why Choose ZPROTO?</h2>
                        </div>
                    </div>
                    <div class="row gy-4 mb-4">
                        <div class="col-md-4 col-lg-5 about-one-col-1">
                            <div class="about-widget-wrap card-overlay" style="background-image: url(new-img/cutting-adge-technology.png)">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Cutting-Edge Technology</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">We use the latest digital manufacturing technologies for exceptional results.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 about-one-col-2">
                            <div class="about-widget-wrap card-overlay" style="background-image: url(new-img/why/5.png)">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Expert Team</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">Our skilled professionals bring extensive industry experience.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3 about-one-col-3">
                            <div class="about-widget-wrap card-overlay" style="background-image: url(new-img/customized-solution.png)">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Customized Solutions</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">Tailored to meet your unique project requirements.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 about-one-bottom-col-1">
                            <div class="about-widget-wrap card-overlay" style="background-image: url(new-img/quality-machine.png)">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Commitment to Quality</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">Consistent, high-quality outcomes with rigorous quality control.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 about-one-bottom-col-2">
                            <div class="about-widget-wrap card-overlay" style="background-image: url(new-img/why/6.png)">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Competitive Pricing</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">Cost-effective solutions without compromising quality.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 about-one-bottom-col-3">
                            <div class="about-widget-wrap card-overlay" style="background-image: url(new-img/timely-delivery.png)">
                                <div class="pbmit-ihbox-style-14">
                                    <div class="pbmit-ihbox-headingicon">
                                        <h4 class="pbmit-element-subtitle">Timely Delivery</h4>
                                        <div class="pbmit-ihbox-contents">
                                            <h2 class="pbmit-element-title">Reliable and punctual delivery of your components.</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tween-effect-section-two pbmit-bg-color-blackish ">
                        <div class="row justify-content-center  align-items-center ">

                            <div class="col-md-8 tween-effect-center-col">
                                <div class="tween-effect-wrap">
                                    <div class="pbmit-heading-subheading  text-start animation-style2">
                                        <h2 class="pbmit-title">Experience the future of manufacturing with ZPROTO.
</h2>
                                        <div class="pbmit-heading-desc">
                                            Contact us today to start your project or learn more about how we can help you achieve your goals.


                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="tween-effect-btn">

                                    <a class="pbmit-btn " href="contact-us.aspx">
                                        <span class="pbmit-button-text">Contact Us </span>
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
            </div>
        </section>
        <!-- Sidebar Start -->
        <section class="sidebar-section-one bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 sidebar-left-col pbmit-sticky-column">
                        <div class="theiaStickySidebar">
                            <div class="sidebar-image">
                                <img src="new-img/1.png" class="img-fluid"
                                    alt>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 sidebar-right-col">
                        <div class="sidebar-wrap">
                            <div class="pbmit-heading-subheading animation-style2">
                                <h4 class="pbmit-subtitle">
                                    <span></span>
                                    Our Seamless Process
                                </h4>
                                <h2 class="pbmit-title">How We Work







</h2>
                            </div>
                            <div class="row">
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    01
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Submit Your Design/Specifications
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Upload your CAD files and design specifications through our secure platform. Our user-friendly 
interface makes it simple to get started.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    02
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Select Materials and Processes
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Choose from a broad range of materials and manufacturing processes, including CNC 
Machining, Injection Molding, 3D Printing, and more, tailored to your project needs.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    03
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Receive a Quote
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Obtain a detailed and transparent quote based on your design and material selections. Our 
platform provides clear pricing to help you make informed decisions.


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    04
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Place an Order
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Order can be through our online Portal along with your specifications/design/other documents 
and order will be confirmed by us.

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    05
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Track Production
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Stay informed about your project's progress with real-time tracking via our online portal.Receive notifications and monitor each phase of production seamlessly, supported by a dedicated 
manufacturing facility.

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    06
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Quality Assurance
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Our team performs rigorous quality checks to ensure all components meet our high standards 
before delivery.

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    07
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Receive Your Parts
</h2>
                                                <div class="pbmit-heading-desc">
                                                    Once Quality check is completed, your order is shipped to your designated address using reliable 
and timely delivery services as quick as one day.

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="pbmit-miconheading-style-10 col-md-12">
                                    <div class="pbmit-ihbox pbmit-ihbox-style-10">
                                        <div class="pbmit-ihbox-box">
                                            <div class="pbmit-ihbox-icon">
                                                <div
                                                    class="pbmit-ihbox-icon-wrapper pbmit-ihbox-icon-type-text">
                                                    08
                                                </div>
                                            </div>
                                            <div class="pbmit-ihbox-contents">
                                                <h2 class="pbmit-element-title">Post-Delivery Support
</h2>
                                                <div class="pbmit-heading-desc">
                                                    We offer comprehensive support to address any questions or concerns after delivery, ensuring 
your complete satisfaction.

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="box-section-two section-lgb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 box-left-col">
                        <div class="box-wrap">
                            <div class="box-contant-inner">
                                <div class="pbmit-heading-subheading animation-style2">
                                    <h4 class="pbmit-subtitle">
                                        <span></span>
                                        Cost Efficiency
                                </h4>
                                    <h2 class="pbmit-title" style="perspective: 400px;">Maximizing Value</h2>
                                    <p>Our competitive pricing structure is designed to deliver value without compromising on quality:</p>
                                </div>
                            </div>
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Transparent Pricing:</strong> Upfront quotes with no hidden fees.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Efficient Operations:</strong> Streamlined processes to reduce costs and overhead.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Value for Money:</strong> High-quality manufacturing solutions at cost-effective prices.</span>
                                </li>

                            </ul>

                        </div>
                    </div>
                    <div class="col-md-6 box-right-col">
                        <div class="box-img">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="box-section-two section-lgb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 box-right-col">
                        <div class="box-img1"></div>
                    </div>
                    <div class="col-md-6 box-left-col">
                        <div class="box-wrap">
                            <div class="box-contant-inner">
                                <div class="pbmit-heading-subheading animation-style2">
                                    <h4 class="pbmit-subtitle">
                                        <span></span>
                                        Timely Delivery
                        </h4>
                                    <h2 class="pbmit-title" style="perspective: 400px;">On-Time, Every Time</h2>
                                    <p>We ensure your parts are delivered on schedule:</p>
                                </div>
                            </div>
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Accurate Timelines: </strong>Realistic estimates provided at the start.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Efficient Production: </strong>Advanced technology and optimized processes for timely 
completion.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Reliable Shipping: </strong>Dependable delivery services to ensure punctual receipt of your 
order.</span>
                                </li>

                            </ul>

                        </div>
                    </div>


                </div>
            </div>
        </section>

        <section class="contact-us-section-two">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-md-6 contact-left-col">
                        <div class="contact-wrap pbmit-bg-color-blackish">
                            <div class="pbmit-heading-subheading animation-style2">
                                <h4 class="pbmit-subtitle">
                                    <span></span>
                                    Non-Disclosure Agreement (NDA)
                                </h4>
                                <h2 class="pbmit-title">Protecting Your Intellectual Property</h2>
                                <p class="mt-2">
                                    At ZPROTO, we prioritize the confidentiality of your designs and proprietary information. Our 
NDA ensures that:
                                </p>
                            </div>
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Confidentiality:</strong> All proprietary information remains confidential and is used only 
for the purpose of providing our services.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Protection Measures:</strong> We implement stringent security measures to prevent 
unauthorized access.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Exclusions:</strong> Confidential Information excludes publicly available, previously known, 
or independently developed information.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Return of Information:</strong> We will promptly return or destroy all Confidential 
Information upon request.</span>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 contact-left-col">
                        <div class="contact-wrap pbmit-bg-color-blackish">
                            <div class="pbmit-heading-subheading animation-style2">
                                <h4 class="pbmit-subtitle">
                                    <span></span>
                                    Quality Assurance
                                </h4>
                                <h2 class="pbmit-title">Commitment to Excellence</h2>
                                <p class="mt-2">
                                    We adhere to rigorous quality standards to deliver<br />
                                    superior results:
                                </p>
                            </div>
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Detailed Inspections:</strong> Comprehensive checks throughout the manufacturing 
process by our team.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Certifications:</strong> All our manufacturer partners are Compliance with industry 
certifications for reliable and consistent quality.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text text-white"><strong>Continuous Improvement:</strong> Ongoing evaluation and enhancement of our processes 
to meet evolving needs.</span>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Sidebar End -->
        <section class="tween-effect">
            <div class="container">
                <div class="tween-effect-section-two new-bg">
                    <div class="row justify-content-center  align-items-center ">

                        <div class="col-md-8 tween-effect-center-col">
                            <div class="tween-effect-wrap">
                                <div class="pbmit-heading-subheading  text-start animation-style2">
                                    <h2 class="pbmit-title text-white">Ready to Bring Your Ideas to Life?
</h2>
                                    <div class="pbmit-heading-desc text-white">
                                        Partner with ZPROTO to turn your vision into reality
                                    
                                        with precision prototyping and advanced manufacturing.
                                        <br />
                                        Let’s create something extraordinary together—start your journey today!







                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="tween-effect-btn">

                                <a class="pbmit-btn bg-dark " href="contact-us.aspx">
                                    <span class="pbmit-button-text">Contact Us </span>
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
        </section>


        <!--  Blog Start -->

        <!--  Blog End -->

    </div>
</asp:Content>

