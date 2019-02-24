function ShowTodo() {
    $("#TodoSection").show();
    $('#MainSection').hide();
    $('#TodoLink').addClass('active');
    $('#HomeLink').removeClass('active');
}

function ShowMain() {
    $("#TodoSection").hide();
    $('#MainSection').show();
    $('#TodoLink').removeClass('active');
    $('#HomeLink').addClass('active');
}