(function ($) {

    /*
    * Initialize event handlers
    */
    (function () {

        var content = $("#mainContent");
        var temp = $("<div>").hide();

        content
			.ajaxStart(function () {

			    $(this).hide(50);
			})
			.ajaxStop(function () {

			    $(this).show(50);
			})

        $("header nav a").click(function (eventObj) {

            var href = $(this).attr("href");

            temp.load(href, {}, function (response, status, ignore) {

                var article = $("article", temp).children();

                content.html(article);
            }); //Second parameter so jQuery uses ajax and nothing else!

            return false;
        });

    })();

})($);
