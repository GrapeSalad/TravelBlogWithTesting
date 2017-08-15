$(document).ready(function () {
    $('.sayHi').click(function () {
        $.ajax({
            type: 'GET',
            url: '/Ajax/SayHi',
            success: function (result) {
                $('#result1').html(result);
            }
        });
    });
    //Register new user
    $('.Register').submit(function (event) {
        event.preventDefault();
        console.log($(this).serialize());
        $.ajax({
            url: '/Ajax/Register',
        
            type: 'POST',
            dataType: 'json',
            //contentType: "application/json",
            data: $(this).serialize(),
            success: function (result) {
                var resultMessage = 'New user added to database<br>Email: ' + result.Email;
                $('#result2').html(resultMessage);
            }
        });
    });
});