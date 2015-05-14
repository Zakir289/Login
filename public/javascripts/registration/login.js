/**
 * Created by zakirelahi on 14/05/15.
 */


$(function(){
    $('.sign-in a').click(bindRegisterForm);
    $('.sign-up a').click(bindSignInForm);
    $('#aboutus').click(bindAboutUs)
});

function bindSignInForm(){
    $('.sign-up').addClass('dont-show')
    $('.sign-in').removeClass('dont-show')
    $('.homepage span').text('')
}


function bindRegisterForm(){
    $('.sign-up').removeClass('dont-show')
    $('.sign-in').addClass('dont-show')
    $('.homepage span').text('')
}

function bindAboutUs(){
        $('.container').addClass('dont-show')
        $('.about-us').removeClass('dont-show')

}

