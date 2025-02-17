<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        span.clsord {
            text-align: center !important;
        }

        .filterRev.selected {
            background: #3577f1 !important;
            color: #fff !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Dashboard</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item active"><a href="javascript: void(0);">Dashboard</a></li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col">
                    <div class="h-100">
                        <div class="row mb-3 pb-1">
                            <div class="col-12">
                                <div class="d-flex align-items-lg-center flex-lg-row flex-column">
                                    <div class="flex-grow-1">
                                        <h4 class="fs-16 mb-1">Hello, <%=Strusername %>!</h4>
                                        <p class="text-muted mb-0">Here's what's happening with your store today.</p>
                                    </div>
                                    <%-- <div class="mt-3 mt-lg-0">
                                        <div class="row g-3 mb-0 align-items-center">
                                            <div class="col-auto">
                                                <a href="add-tour-details.aspx" class="btn btn-soft-secondary shadow-none"><i class="mdi  mdi-map-check-outline align-middle me-1"></i>View Tours</a>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-3 col-md-6">
                    <div class="card card-animate custom-bg">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Contact Requests</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4"><span class="counter-value" data-target="<%=strNofContactReq %>"><%=strNofContactReq %></span></h4>
                                    <a href="/Admin/view-contactus.aspx" class="text-decoration-underline">View Contact Request</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-warning rounded fs-3">
                                        <i class="mdi mdi-image-edit-outline"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Consultaion requests</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4"><span class="counter-value" data-target="<%=strNoOfConsultreq %>"><%=strNoOfConsultreq %></span></h4>
                                    <a href="/Admin/consultation-requests.aspx" class="text-decoration-underline">View Consultaion requests</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-success rounded fs-3">
                                        <i class="mdi mdi-food-outline"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Blogs</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4"><span class="counter-value" data-target="<%=strNoOfBlogs %>"><%=strNoOfBlogs %></span></h4>
                                    <a href="/Admin/view-blogs.aspx" class="text-decoration-underline">View Blogs</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-info rounded fs-3">
                                        <i class="ri ri-wechat-line"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Manufacturing Partner</p>
                                </div>

                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4"><span class="counter-value" data-target="<%=strNoOfManufacturingReq %>"><%=strNoOfManufacturingReq %></span></h4>
                                    <a href="/Admin/manufacturing-partner.aspx" class="text-decoration-underline">View Manufacturing Request</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-success rounded fs-3">
                                        <i class="ri ri-contacts-line"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header align-items-center d-flex">
                            <h4 class="card-title mb-0 flex-grow-1">Recent Contact Request</h4>
                            <div class="flex-shrink-0">
                                <a href="/Admin/view-contactus.aspx" class="btn btn-soft-info btn-sm shadow-none">
                                    <i class="ri-file-list-3-line align-middle"></i>
                                    View Contacts Request
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table-card">
                                <table class="table table-borderless table-centered align-middle table-nowrap mb-0">
                                    <thead class="text-muted table-light">
                                        <tr>
                                            <th>#</th>
                                            <th>FirstName</th>
                                            <th>LastName</th>
                                            <th>Company</th>
                                            <th>Email Adress</th>
                                            <th>Phone</th>
                                            <th>AddedOn</th>
                                            <th class="text-center">Message</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%=StrContact %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div id="fadeInRightModal" class="modal zoomIn" tabindex="-1" aria-labelledby="fadeInRightModalLabel" style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="fadeInRightModalLabel">Message Information</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive" id="Contactinfosingle">
                            </div>
                        </div>
                        <!--end col-->
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <script>$(document.body).on('click', '.btnmsg', function () {
            $("#Contactinfosingle").empty();
            var elem = $(this);
            var name = elem.attr('data-name');
           var Message = elem.attr('data-message');
            $('.modal-header .modal-title').html('Message Information - ' + name);
    if (Message) {
        var tableinfo = "<table class='table'><tbody>";
        tableinfo += "<tr><td>" + Message + "</td></tr>";
        tableinfo += "</tbody></table>";
        $("#Contactinfosingle").append(tableinfo);
    } else {
        $("#Contactinfosingle").html("No message available.");
    }
        });</script>
</asp:Content>

