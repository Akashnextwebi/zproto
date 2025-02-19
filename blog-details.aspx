<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog-details.aspx.cs" Inherits="blog_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style>
		.site-content.blog-details:before{
			display:none;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-content">
        <section class="site-content blog-details">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-xl-9 blog-left-col">
						<div class="row">
							<div class="col-md-12">
								<div class="blog-title">
									<h1><%=StrBlogTitle %></h1>
								</div>
							</div>
							<div class="col-md-12">
								<article>
									<div class="post blog-classic">    
										<div class="pbmit-featured-img-wrapper">
											<div class="pbmit-featured-img-wrapper">
												<div class="pbmit-featured-wrapper">
													<img src="/<%=StrImgUrl %>"class='img-fluid' alt='no available'>
												</div>
											</div>  
										</div>  
										<div class="pbmit-blog-classic-inner">
											<div class="pbmit-blog-meta pbmit-blog-meta-top">	
												<span class="pbmit-meta pbmit-meta-cat">
													<a href="javascript:void(0);" rel="category tag">Make up</a>
												</span>
												<span class="pbmit-meta pbmit-meta-date">
													<i class="pbmit-base-icon-calendar-2"></i>
													<a href="#" rel="bookmark">
														<time class="entry-date published" datetime="2023-08-29T09:05:54+00:00"><%=StrPostedOn %></time>
														<time class="updated pbmit-hide" datetime="2023-10-19T05:42:54+00:00"><%=StrPostedOn %></time>
													</a>
												</span>
												<span class="pbmit-meta pbmit-meta-author">
													<i class="pbmit-base-icon-user-4"></i>By
													<a class="pbmit-author-link" href="javascript:void(0);"><%=StrPostedBy %></a>
												</span>		
											</div>
											<div class="blog-editor-content">
											<%=StrDesc %>
											</div>
										</div>   
									</div>
								</article>
							</div> 
						</div>
					</div>
					<div class="col-md-12 col-xl-3 blog-right-col">
						<aside class="sidebar">
							<aside class="widget widget-recent-post">
								<h2 class="widget-title">Recent Post </h2>
									<ul class="recent-post-list">
								<%=StrRecentBlogs %>

										<%--<li class="recent-post-list-li"> 
											<a class="recent-post-thum" href="#">
												<img src="new-img/blogs/blog-1.png" class="img-fluid" alt="">
											</a>
											<div class="pbmit-rpw-content">
												<span class="pbmit-rpw-title">
													<a href="#">The Role of Sheet Metal Fabrication in Modern Industrial Applications</a>
												</span>
												<span class="pbmit-rpw-date">
													<a href="#">July 6, 2024</a>
												</span>
											</div> 
										</li>
										<li class="recent-post-list-li"> 
											<a class="recent-post-thum" href="#">
												<img src="new-img/blogs/blog-2.png" class="img-fluid" alt="">
											</a>
											<div class="pbmit-rpw-content">
												<span class="pbmit-rpw-title">
													<a href="#">Injection Molding: How It Revolutionized Mass Production in Manufacturing</a>
												</span>
												<span class="pbmit-rpw-date">
													<a href="#">July 6, 2024</a>
												</span>
											</div> 
										</li>
										<li class="recent-post-list-li"> 
											<a class="recent-post-thum" href="#">
												<img src="new-img/blogs/blog-3.png" class="img-fluid" alt="">
											</a>
											<div class="pbmit-rpw-content">
												<span class="pbmit-rpw-title">
													<a href="#">PCB Assembly and Box Build: The Backbone of Modern Electronics</a>
												</span>
												<span class="pbmit-rpw-date">
													<a href="#">July 6, 2024</a>
												</span>
											</div> 
										</li>--%>
									</ul>
							</aside>
							<aside class="widget pbmit-service-ad">
								<div class="textwidget">
									<div class="pbmit-service-ads">
										<h3 class="pbmit-ads-title">Experience the future of manufacturing with ZPROTO!</h3>
										<div class="pbmit-ads-desc">
											<a href="tel:+911234567890" class="text-white ">
											   <i class="pbmit-base-icon-telephone-call text-white"></i>+91 12345 67890
											</a>
										</div>
									</div>
								</div>
							</aside>
						</aside>
					</div>
				</div>
			</div>
		</section>
    </div>
</asp:Content>

