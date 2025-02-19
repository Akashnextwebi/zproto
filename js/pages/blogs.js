
$(document).ready(function () {
    BindAllBlogs();

    $(document.body).on('click', ".pPVClick", function () {
        var ele = $(this);
        $(".pPagination a").removeClass("current");
        ele.addClass("current");
        BindAllBlogs();

    });
    $(document.body).on('click', ".prPVClick", function () {


        var ele = $(this);
        var activeIndex = $(".pPagination li.active a").attr("id").split('_')[1];
        var currentIndex = ele.attr("id").split('_')[1];
        if (activeIndex == currentIndex) {
            $(".pPagination li a.dNonePrev").css("display", "none");
            return;
        }
        $(".pPagination a").removeClass("current");
        ele.addClass("current");
        BindAllBlogs();

    });
    $(document.body).on('click', ".nxPVClick", function () {
        $(".pPagination li.dNonePrev").css("display", "flex");
        var ele = $(this);

        var currentIndex = ele.attr("id").split('_')[1];
        var activeIndex = $(".pPagination li.active a").attr("id").split('_')[1];

        if (currentIndex == activeIndex) {
            $(".pPagination li a.dNoneNext").css("display", "none");
            return;
        }

        $(".pPagination a").removeClass("current");
        ele.addClass("current");
        BindAllBlogs();

    });

});
function BindAllBlogs() {


    var pno = "1";
    if ($(".pPagination a").hasClass("current")) {
        pno = $(".pPagination .current").attr('id').split('_')[1];
    }

    var dts = { pno: pno };
    $.ajax({
        type: 'POST',
        url: 'blogs.aspx/allBlogs',
        data: JSON.stringify(dts),
        contentType: 'application/json; charset=utf-8',
        dataType: "json",
        async: false,
        success: function (res) {
            var products = res.d;
            var listings = "";
            var pLength = "";
            for (var i = 0; i < products.length; i++) {
                var blogurl = "/blog/" + products[i].BlogUrl;
                var img = "/" + products[i].ThumbImage;
                pLength = products[0].TotalCount;



                listings += "<article class='pbmit-blog-style-1 col-md-4'>";
                listings += "<div class='post-item'>";
                listings += "<div class='pbminfotech-box-content'>";
                listings += "<div class='pbmit-featured-container'>";
                listings += "<div class='pbmit-featured-img-wrapper'>";
                listings += "<div class='pbmit-featured-wrapper'>";
                listings += "<img src='" + img + "' alt='Blog Image' />";
                listings += "</div>";
                listings += "</div>";
                listings += "<a class='pbmit-link' href='" + blogurl + "'></a>";
                listings += "</div>";
                listings += "<div class='pbmit-content-wrapper'>";
                listings += "<h3 class='pbmit-post-title'>";
                listings += "<a href='" + blogurl + "'>" + (products[i].BlogTitle || "Untitled Blog") + "</a>";
                listings += "</h3>";
                listings += "<div class='pbmit-date-wraper d-flex align-items-center'>";
                listings += "<div class='pbmit-meta-date-wrapper pbmit-meta-line'>";
                listings += "<div class='pbmit-meta-date'>";
                listings += "<span class='pbmit-post-date'>" + (products[i].PostedOn || "Unknown Date") + "</span>";
                listings += "</div>";
                listings += "</div>";
                listings += "<div class='pbmit-meta-author pbmit-meta-line'>";
                listings += "<span class='pbmit-post-author'><span>By </span>" + (products[i].PostedBy || "Unknown") + "</span>";
                listings += "</div>";
                listings += "</div>";
                listings += "</div>";
                listings += "</div>";
                listings += "</article>";

            }

            $("#BlogListBindingSec").empty();
            if (products.length > 0) {
                $("#BlogListBindingSec").append(listings);
                BindPPage(6, parseInt(pno), pLength);
                var maxHeight = Math.max.apply(null, $(".post-item .post__title a").map(function () {
                    return $(this).height();
                }).get());
                $(".post-item .post__title a").css("min-height", maxHeight);

                var maxHeight1 = Math.max.apply(null, $(".mainBlogPage .post-item .post__body .post__desc").map(function () {
                    return $(this).height();
                }).get());
                $(".mainBlogPage .post-item .post__body .post__desc").css("min-height", maxHeight1);
            }


        },
        error: function (err) {

            $("#BlogListBindingSec").empty();

        }
    });


};

function BindPPage(pageS, cPage, pCount) {
    var noOfPagesCreated = ~~(parseFloat(pCount) / parseInt(pageS));
    var isExtra = (parseFloat(pCount) % parseInt(pageS)) === 0 ? 0 : 1;

    noOfPagesCreated = noOfPagesCreated + isExtra;

    $(".pPagination").empty();

    var pagesss = "";

    var np = parseInt(cPage) % 6 === 0 ? (parseInt(cPage) / parseInt(8) - 1) : parseInt(cPage) / parseInt(6);
    var nearestNextP = (~~np + 1) * 6;
    var pLength = noOfPagesCreated < parseInt(nearestNextP) ? noOfPagesCreated : parseInt(nearestNextP);
    var startPage = (parseInt(nearestNextP) - 5);


    for (var i = startPage; i <= pLength; i++) {
        var act = i === parseInt(cPage) ? "current" : "";
        var activ = i === parseInt(cPage) ? "active" : "";
        var LastIndex = i === pLength ? "LastIndex" : "";
        pagesss += "<li class='page-item " + activ + "'><a class='page-link pPVClick " + act + " " + LastIndex + "' href='javascript:void(0);' id='pno_" + (i) + "'>" + (i) + "</a></li>";
    }
    if (noOfPagesCreated > pLength) {
        pagesss += "<li class='page-item'><a class=' pPVClick' href='javascript:void(0);' id='pno_" + (pLength + 1) + "'>...</a></li>";
        pagesss += "<li class='page-item'><a class='pPVClick LastIndex' href='javascript:void(0);' id='pno_" + (noOfPagesCreated) + "'>" + (noOfPagesCreated) + "</a></li>";
    }

    var prvPg = startPage === 1 ? 1 : startPage - 1;
    var nxtPg = noOfPagesCreated > pLength ? (pLength + 1) : pLength;

    if (noOfPagesCreated <= 5) {
        prvPg = parseInt(cPage) === 1 ? 1 : parseInt(cPage) - 1;
        nxtPg = parseInt(cPage) === pLength ? pLength : parseInt(cPage) + 1;
    }

    var dNonePrev = parseInt(cPage) === 1 ? "dNonePrev" : "";
    var dNoneNext = parseInt(cPage) === nxtPg ? "dNoneNext" : "";

    var pgnPrev = "<li class='left page-item " + dNonePrev + "'><a id='pnon_" + prvPg + "' class='page-link prPVClick' href='javascript:void(0);' aria-label='Previous'><i class='fa fa-angle-left'></i></a></li>";

    var pgnNext = "<li class='left page-item " + dNoneNext + "'><a class='page-link nxPVClick ' href='javascript:void(0);' id='pnon_" + nxtPg + "' aria-label='Next'><i class='fa fa-angle-right'></i></a></li>";


    $(".pPagination").append(pgnPrev + pagesss + pgnNext);

    var topOffset = $("#BlogListBindingSec").offset().top;
    $(document).scrollTop(topOffset - 150)
}


