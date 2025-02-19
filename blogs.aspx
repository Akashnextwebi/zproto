<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pbmit-title-bar-wrapper" style="background: url(new-img/cnc1.png)">
        <div class="container">
            <div class="pbmit-title-bar-content">
                <div class="pbmit-title-bar-content-inner">
                    <div class="pbmit-tbar">
                        <div class="pbmit-tbar-inner container">
                            <h1 class="pbmit-tbar-title">Blogs</h1>
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
                            <span>
                                <a title="" href="/blogs.aspx" class="home"><span>Blogs</span></a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-content">
        <section class="section-xl">
            <div class="container">
                <div class="blog-wrapper">
                    <div class="row pbmit-element-posts-wrapper">
                        <div class="row" id="BlogListBindingSec">
                        </div>
<%--                      <article class="pbmit-blog-style-1 col-md-4">
                            <div class="post-item">
                                <div class="pbminfotech-box-content">
                                    <div class="pbmit-featured-container">
                                        <div class="pbmit-featured-img-wrapper">
                                            <div class="pbmit-featured-wrapper">
                                                <img src="new-img/blogs/blog-2.png" alt="">
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="blog-details.aspx"></a>
                                    </div>
                                    <div class="pbmit-content-wrapper">
                                        <h3 class="pbmit-post-title">
                                            <a href="blog-details.aspx">The Role of Sheet Metal Fabrication in Modern Industrial Applications</a>
                                        </h3>
                                        <div class="pbmit-date-wraper d-flex align-items-center">
                                            <div class="pbmit-meta-date-wrapper pbmit-meta-line">
                                                <div class="pbmit-meta-date">
                                                    <span class="pbmit-post-date">July 7, 2024</span>
                                                </div>
                                            </div>
                                            <div class="pbmit-meta-author pbmit-meta-line">
                                                <span class="pbmit-post-author"><span>By</span>ZPROTO</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                         <article class="pbmit-blog-style-1 col-md-4">
                            <div class="post-item">
                                <div class="pbminfotech-box-content">
                                    <div class="pbmit-featured-container">
                                        <div class="pbmit-featured-img-wrapper">
                                            <div class="pbmit-featured-wrapper">
                                                <img src="new-img/blogs/blog-3.png" alt="">
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="blog-details.aspx"></a>
                                    </div>
                                    <div class="pbmit-content-wrapper">
                                        <h3 class="pbmit-post-title">
                                            <a href="blog-details.aspx">Injection Molding: How It Revolutionized Mass Production in Manufacturing</a>
                                        </h3>
                                        <div class="pbmit-date-wraper d-flex align-items-center">
                                            <div class="pbmit-meta-date-wrapper pbmit-meta-line">
                                                <div class="pbmit-meta-date">
                                                    <span class="pbmit-post-date">July  7, 2024</span>
                                                </div>
                                            </div>
                                            <div class="pbmit-meta-author pbmit-meta-line">
                                                <span class="pbmit-post-author"><span>By</span>ZPROTO</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="pbmit-blog-style-1 col-md-4">
                            <div class="post-item">
                                <div class="pbminfotech-box-content">
                                    <div class="pbmit-featured-container">
                                        <div class="pbmit-featured-img-wrapper">
                                            <div class="pbmit-featured-wrapper">
                                                <img src="new-img/blogs/blog-4.png" alt="">
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="blog-details.aspx"></a>
                                    </div>
                                    <div class="pbmit-content-wrapper">
                                        <h3 class="pbmit-post-title">
                                            <a href="blog-details.aspx">PCB Assembly and Box Build: The Backbone of Modern Electronics</a>
                                        </h3>
                                        <div class="pbmit-date-wraper d-flex align-items-center">
                                            <div class="pbmit-meta-date-wrapper pbmit-meta-line">
                                                <div class="pbmit-meta-date">
                                                    <span class="pbmit-post-date">July  7, 2024</span>
                                                </div>
                                            </div>
                                            <div class="pbmit-meta-author pbmit-meta-line">
                                                <span class="pbmit-post-author"><span>By</span>ZPROTO</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="pbmit-blog-style-1 col-md-4">
                            <div class="post-item">
                                <div class="pbminfotech-box-content">
                                    <div class="pbmit-featured-container">
                                        <div class="pbmit-featured-img-wrapper">
                                            <div class="pbmit-featured-wrapper">
                                                <img src="new-img/blogs/blog-5.png" alt="">
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="blog-details.aspx"></a>
                                    </div>
                                    <div class="pbmit-content-wrapper">
                                        <h3 class="pbmit-post-title">
                                            <a href="blog-details.aspx">Reverse Engineering: How It Helps Improve and Optimize Existing Products</a>
                                        </h3>
                                        <div class="pbmit-date-wraper d-flex align-items-center">
                                            <div class="pbmit-meta-date-wrapper pbmit-meta-line">
                                                <div class="pbmit-meta-date">
                                                    <span class="pbmit-post-date">July  7, 2024</span>
                                                </div>
                                            </div>
                                            <div class="pbmit-meta-author pbmit-meta-line">
                                                <span class="pbmit-post-author"><span>By</span>ZPROTO</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="pbmit-blog-style-1 col-md-4">
                            <div class="post-item">
                                <div class="pbminfotech-box-content">
                                    <div class="pbmit-featured-container">
                                        <div class="pbmit-featured-img-wrapper">
                                            <div class="pbmit-featured-wrapper">
                                                <img src="new-img/blogs/blog-6.png" alt="">
                                            </div>
                                        </div>
                                        <a class="pbmit-link" href="blog-details.aspx"></a>
                                    </div>
                                    <div class="pbmit-content-wrapper">
                                        <h3 class="pbmit-post-title">
                                            <a href="blog-details.aspx">Electro-Mechanical Systems: Bridging the Gap Between Electronics and Mechanical Engineering</a>
                                        </h3>
                                        <div class="pbmit-date-wraper d-flex align-items-center">
                                            <div class="pbmit-meta-date-wrapper pbmit-meta-line">
                                                <div class="pbmit-meta-date">
                                                    <span class="pbmit-post-date">July  7, 2024</span>
                                                </div>
                                            </div>
                                            <div class="pbmit-meta-author pbmit-meta-line">
                                                <span class="pbmit-post-author"><span>By</span>ZPROTO</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>--%>
                        <div class="col-lg-12">
                            <div class="d-flex justify-content-center">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination pPagination">
                                        <li class="page-item left"><a class="page-link" href="#"><</a></li>
                                       <%-- <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
                                        <li class="page-item left"><a class="page-link" href="#">></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="/js/pages/blogs.js"></script>
</asp:Content>

