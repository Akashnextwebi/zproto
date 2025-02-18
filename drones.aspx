<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="drones.aspx.cs" Inherits="drones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style>
       .how-it-works .pbmit-ihbox-style-1 .pbmit-element-title {
           font-size: 24px;
           margin-bottom: 16px;
           color: var(--pbmit-global-color);
       }

       .process-card.pbmit-ihbox-style-1 {
           padding: 50px 30px;
       }

       .how-it-works .pbmit-heading-desc {
           margin-bottom: 0;
           color: #000;
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="pbmit-title-bar-wrapper" style="background: url(new-img/industry.png)">
        <div class="container">
            <div class="pbmit-title-bar-content">
                <div class="pbmit-title-bar-content-inner">
                    <div class="pbmit-tbar">
                        <div class="pbmit-tbar-inner container">
                            <h1 class="pbmit-tbar-title">Our Drone Manufacturing Capabilities</h1>
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
                            <span>
                                <a title="" href="#" class="home"><span>Industry</span></a>
                            </span>

                            <span class="sep">
                                <i class="pbmit-base-icon-angle-right"></i>
                            </span>
                            <span><span class="post-root post post-post current-item">Drones</span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Title Bar End-->

    <!-- Page Content -->
    <div class="page-content">
        <section class="section-xl pbmit-column-three industry-detail-list">
            <div class="container">
                <div class="row row-gap-gutter">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/1.png" />
                            </div>
                            <div class="content">
                                <h3>CNC Machining</h3>
                                <p>Precision parts and components crafted to exact specifications, perfect for building highperformance drones.  </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/2.png" />
                            </div>
                            <div class="content">
                                <h3>Sheet Metal</h3>
                                <p>Custom sheet metal fabrication for drone enclosures and structural components, designed for
durability and aerodynamics.  </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/3.png" />
                            </div>
                            <div class="content">
                                <h3>Fabrication</h3>
                                <p>Robust fabrication solutions for complex drone assemblies and components, ensuring strength
and functionality in flight.  </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/4.png" />
                            </div>
                            <div class="content">
                                <h3>Casting</h3>
                                <p>High-quality casting services for critical drone parts, providing strength and reliability essential
for UAV operations. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/5.png" />
                            </div>
                            <div class="content">
                                <h3>Forging</h3>
                                <p>Durable forged components that meet the rigorous demands of drone applications, ensuring high
performance and safety</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/6.png" />
                            </div>
                            <div class="content">
                                <h3>Injection Molding</h3>
                                <p>Precision plastic parts and housings molded to exact specifications, suitable for various drone
designs and applications.  </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/3D-Printing.png" />
                            </div>
                            <div class="content">
                                <h3>3D Printing</h3>
                                <p>Rapid prototyping and production of intricate drone parts, enabling quick design iterations and
custom solutions. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/Wire-Harness.png" />
                            </div>
                            <div class="content">
                                <h3>Wire Harness</h3>
                                <p>Efficient and reliable wire harnesses for drone electrical systems, ensuring seamless connectivity
and functionality. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/PCB-Assembly.png" />
                            </div>
                            <div class="content">
                                <h3>PCB Assembly</h3>
                                <p>Advanced assembly for printed circuit boards used in drone electronics, ensuring reliability and
high performance.  </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/Box-Build.png" />
                            </div>
                            <div class="content">
                                <h3>Box Build</h3>
                                <p>Custom enclosures and assemblies, integrating multiple components into fully functional drone
systems. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/Electro-Mechanical-Systems.png" />
                            </div>
                            <div class="content">
                                <h3>Electro-Mechanical Systems</h3>
                                <p>Integration of electrical and mechanical components to enhance drone performance and
functionality.  </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/Tailored-manufacturing-solutions.png" />
                            </div>
                            <div class="content">
                                <h3>Built-to-Spec</h3>
                                <p>Tailored manufacturing solutions that meet precise specifications, delivering drone components
and systems exactly as required. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="industry-card">
                            <div class="service-image">
                                <img src="new-img/camp/Reverse-Engineering.png" />
                            </div>
                            <div class="content">
                                <h3>Reverse Engineering</h3>
                                <p>
                                    Accurate replication and enhancement of existing drone components, providing valuable insights
and design improvements. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="box-section-two section-md why-choose-service">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 box-left-col">
                        <div class="box-wrap ps-0">
                            <div class="box-contant-inner">
                                <div class="pbmit-heading-subheading animation-style2">
                                    <h2 class="pbmit-title mb-3" style="perspective: 400px;">Quality Certifications</h2>
                                </div>
                            </div>
                            <p>
                                <strong>Ensuring Excellence in Drone Manufacturing</strong>
                                <br />
                                ZPROTO is committed to delivering high-quality drone components through rigorous
certification and partner onboarding processes. Our partners certifications include:
                            </p>
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>ISO 9001:</strong> Quality Management Systems</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>AS9100:</strong> Aerospace Quality Management</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>NADCAP:</strong> National Aerospace and Defense Contractors Accreditation Program.</span>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <div class="col-md-6 box-right-col">
                        <div class="box-img" style="background-image: url(new-img/industry-1.png)"></div>
                    </div>
                </div>
                <div class="row flex-row-reverse mt-60">
                    <div class="col-md-6 box-left-col">
                        <div class="box-wrap">
                            <div class="box-contant-inner">
                                <div class="pbmit-heading-subheading animation-style2">
                                    <h2 class="pbmit-title mb-3" style="perspective: 400px;">Rigorous Partner Onboarding</h2>
                                </div>
                            </div>
                            <p>
                               We onboard manufacturing partners only after a thorough quality and capability audit to ensure
they meet our stringent standards. Our onboarding process includes: 
                            </p>
                            <ul class="list-group list-group-borderless">
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Quality Audits:</strong> Comprehensive assessments of manufacturing processes and
quality control systems.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Capability Assessments:</strong> Evaluation to confirm the ability to meet technical and
production requirements for drone components.</span>
                                </li>
                                <li class="list-group-item">
                                    <span class="pbmit-icon-list-text"><strong>Compliance Verification:</strong> Ensuring adherence to relevant industry standards and
certifications for drone manufacturing.</span>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <div class="col-md-6 box-right-col">
                        <div class="box-img" style="background-image: url(new-img/industry-2.png)"></div>
                    </div>
                </div>
            </div>
        </section>

        <section class="how-it-works section-md">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="pbmit-heading-subheading animation-style2 text-center">
                            <h2 class="pbmit-title mb-3" style="perspective: 400px;">Why Choose ZPROTO for Drones?</h2>
                        </div>
                    </div>
                </div>
                <div class="service-contant">
                    <div class="row row-gap-gutter">

                        <div class="col-lg-4 col-md-6">
                            <div class="pbmit-ihbox-style-1 process-card">
                                <div class="pbmit-ihbox-headingicon">
                                    <div class="pbmit-ihbox-contents">
                                        <h2 class="pbmit-element-title">Precision Engineering</h2>
                                        <div class="pbmit-heading-desc">High-quality solutions for advanced UAV systems.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="pbmit-ihbox-style-1 process-card">
                                <div class="pbmit-ihbox-headingicon">
                                    <div class="pbmit-ihbox-contents">
                                        <h2 class="pbmit-element-title">Advanced Technology</h2>
                                        <div class="pbmit-heading-desc">Cutting-edge tools and techniques for exceptional performance.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="pbmit-ihbox-style-1 process-card">
                                <div class="pbmit-ihbox-headingicon">
                                    <div class="pbmit-ihbox-contents">
                                        <h2 class="pbmit-element-title">Expert Team</h2>
                                        <div class="pbmit-heading-desc">Professionals with extensive experience in drone manufacturing.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="pbmit-ihbox-style-1 process-card">
                                <div class="pbmit-ihbox-headingicon">
                                    <div class="pbmit-ihbox-contents">
                                        <h2 class="pbmit-element-title">Custom Solutions</h2>
                                        <div class="pbmit-heading-desc">Tailored services to meet the unique needs of your drone
designs.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="pbmit-ihbox-style-1 process-card">
                                <div class="pbmit-ihbox-headingicon">
                                    <div class="pbmit-ihbox-contents">
                                        <h2 class="pbmit-element-title">Flexible Production</h2>
                                        <div class="pbmit-heading-desc">From prototypes to high-volume production runs.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="pbmit-ihbox-style-1 process-card">
                                <div class="pbmit-ihbox-headingicon">
                                    <div class="pbmit-ihbox-contents">
                                        <h2 class="pbmit-element-title">Rigorous Quality Control</h2>
                                        <div class="pbmit-heading-desc">Ensuring reliability and compliance through certified processes.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </section>
        <section class="our-client-section-one section-md pbmit-bg-color-blackish sucess-story-industry">
            <div class="our-client-wrap">
                <div class="container">
                    <div class="pbmit-ele-header-align-center">
                        <div class="pbmit-heading-subheading text-center animation-style2">
                            <h2 class="pbmit-title">Success Stories</h2>
                            <p class="text-center text-white mt-2">
                                Explore Our Drone Projects to see how we’ve supported innovative UAV designs with our
advanced manufacturing capabilities. 
                            </p>
                        </div>
                        <div class="link-wrap text-center">
    <a class="pbmit-btn-white pbmit-btn" href="#"><span class="pbmit-button-text">Learn More </span>
                                    <span class="pbmit-button-icon-wrapper">
                                        <span class="pbmit-button-icon">
                                            <i class="pbmit-base-icon-black-arrow-1"></i>
                                        </span>
                                    </span></a>
</div>
                    </div>
                </div>
            </div>
        </section>
        <section class="tween-effect">
            <div class="container">
                <div class="tween-effect-section-two pbmit-bg-color-blackish mt-50">
                    <div class="row justify-content-center  align-items-center ">

                        <div class="col-md-8 tween-effect-center-col">
                            <div class="tween-effect-wrap">
                                <div class="pbmit-heading-subheading  text-start animation-style2">
                                    <h2 class="pbmit-title">Start Your Drone Project</h2>
                                    <div class="pbmit-heading-desc">
                                       Transform your drone designs with ZPROTO’s precision manufacturing solutions. Contact Us
today to discuss your needs or schedule a consultation. 
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="tween-effect-btn">

                                <a class="pbmit-btn " href="#">
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


    </div>
</asp:Content>

