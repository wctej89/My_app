jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})


$(document).ready(function() {
    console.log( 'car.js loaded' );

    jQuery.fn.submitWithAjax = function() {
        this.submit(function() {
            $.post(this.action, $(this).serialize(), null, "script");
            return false;
        })
        return this;
    };
        $( "#sliderprice" ).slider({
            value: 80000,
            min: 10000,
            max: 80000,
            step: 5000,

            change: function( event, ui ) {
                $( "#car_price" ).val( ui.value );
                $( "#car_price_value" ).text( "$" + ui.value);
                
                $("#new_car").submitWithAjax();
                $("#ninja").click()
            }
        });

        $( "#slidermpg" ).slider({
            value:0,
            min: 0,
            max: 60,
            step: 5,
            slide: function( event, ui ) {
                $( "#car_mpg" ).val( ui.value );
                $( "#car_mpg_value" ).text(ui.value);

                $("#new_car").submitWithAjax();
                $("#ninja").click()
            }
        });

        $( "#sliderhandling" ).slider({
            value:0,
            min: 0,
            max: 8,
            step: 2,
            slide: function( event, ui ) {
                $( "#car_handling" ).val( ui.value );
                $( "#car_handling_value" ).text(ui.value);

                if ( ui.value <= 1 ) {
                    $("#car_handling_value").text("Don't Care");
                }
                else if ( ui.value == 2) {
                    $("#car_handling_value").text("Could care less");
                }
                else if ( ui.value == 4 ) {
                    $("#car_handling_value").text("Average");
                }
                else if ( ui.value == 6 ) {
                    $("#car_handling_value").text("Very Good");
                }
                else if ( ui.value == 8 ) {
                    $("#car_handling_value").text("Top Notch");
                }
                else {
                    $("#car_handling_value").text("Error");
                }

                $("#new_car").submitWithAjax();
                $("#ninja").click()
            }
        });

        $( "#sliderinterior" ).slider({
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function( event, ui ) {
                $( "#car_interior" ).val( ui.value );
                $( "#car_interior_value" ).text(ui.value);

                $("#new_car").submitWithAjax();
                $("#ninja").click()
            }
        });

        $( "#sliderlooks" ).slider({
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function( event, ui ) {
                $( "#car_looks" ).val( ui.value );
                $( "#car_looks_value" ).text(ui.value);

                $("#new_car").submitWithAjax();
                $("#ninja").click()
            }
        });

        $( "#car_price" ).val( $( "#sliderprice" ).slider( "value" ) );
        $( "#car_mpg" ).val( $( "#slidermpg" ).slider( "value" ) );
        $( "#car_handling" ).val( $( "#sliderhandling" ).slider( "value" ) );
        $( "#car_interior" ).val( $( "#sliderinterior" ).slider( "value" ) );
        $( "#car_looks" ).val( $( "#sliderlooks" ).slider( "value" ) );
        $( "#car_legroom" ).val( $( "#sliderlegroom" ).slider( "value" ) );

        $(".nuke").click(function() {
            $("#containerforpartial").html("");
        }); 
         
});




