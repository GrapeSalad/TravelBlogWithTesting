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
    //Show registration form
    $('.registration').click(function () {
       
        $.ajax({
            type: 'GET',
            url: '/Ajax/Registration',
            success: function (result) {
                $('#result2').html(result);
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
                $('#result3').html(resultMessage);
            }
        });
    });
    //Show log in form
    $('.login').click(function () {
        $.ajax({
            type: 'GET',
            url: '/Ajax/LoginForm',
            success: function (result) {
                $('#result4').html(result);
            }
        });
    });
    //Log in
    $('.Login').submit(function (event) {
        event.preventDefault();
        console.log($(this).serialize());
        $.ajax({
            url: '/Ajax/Login',
            type: 'POST',
            dataType: 'json',
            //contentType: "application/json",
            data: $(this).serialize(),
            success: function (result) {
                var resultMessage = 'You have logged in';
                $('#LogInMessage').html(resultMessage);
            }
        });
    });
    //Show experiences
    $('.posts').click(function () {
        $.ajax({
            type: 'GET',
            url: '/Experience/Index',
            success: function (result) {
                $('#xpPost').html(result);
            }
        });
    });
});