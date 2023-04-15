$(document).ready(function () {
    $('#login').validate({
        rules: {
            username: {
                required: true,
                pattern: /^[a-zA-Z0-9]{5,15}$/
            },
            email: {
                required: true,
                pattern: /^[a-zA-Z0-9]+@[a-zA-z0-9]+\.[a-zA-Z0-9]{2,3}$/
            },

            number: {
                required: true,
                pattern: /^[0-9]{10}$/
            },
            comments: {
                required: true,
                pattern: /^[A-za-z0-9]{5,100}$/
            }
        },
        messages: {
            username: {
                required: "Enter a valid username",
                pattern: "The user name should contain atleast 5 charachters",
            },
            email: {
                required: "Enter a valid mail",
                pattern: "The mail should end with @g2tsolutions.com",
            },
            number: {
                required: "Enter 11  numbers",
                pattern: "Maximum length 11",
            },
            comments: {
                required: "Enter some text",
                pattern: "should contain atleast 5 charachters",
            }

        }
    })
})
$(function() {
    $(document).scroll(function() {
        var $nav = $(".navbar-fixed-top");
        $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
    });
});