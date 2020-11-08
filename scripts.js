$(document).ready(function() {
    $("#hidden").click(function() {
        $("#hidden").removeClass("hide");
        $("#user").fadeIn("slow");
    });
    $("#gabinety > i").click(function() {
        $("#gabinety_list").toggle("slow");
        $("#gabinety > i").toggleClass("fa-angle-up");
    });
    $("#lekarze > i").click(function() {
        $("#lekarze_list").toggle("slow");
        $("#lekarze > i").toggleClass("fa-angle-up");
    });
    $("#grafiki > i").click(function() {
        $("#grafiki_list").toggle("slow");
        $("#grafiki > i").toggleClass("fa-angle-up");
    });
});


