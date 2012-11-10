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
            value:200000,
            min: 10000,
            max: 200000,
            step: 5000,

            slide: function( event, ui ) {
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
            step: 1,
            slide: function( event, ui ) {
                $( "#car_mpg" ).val( ui.value );
                $( "#car_mpg_value" ).text(ui.value);
            }
        });

        $( "#sliderhandling" ).slider({
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function( event, ui ) {
                $( "#car_handling" ).val( ui.value );
                $( "#car_handling_value" ).text(ui.value);
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
            }
        });

        $( "#car_price" ).val( $( "#sliderprice" ).slider( "value" ) );
        $( "#car_mpg" ).val( $( "#slidermpg" ).slider( "value" ) );
        $( "#car_handling" ).val( $( "#sliderhandling" ).slider( "value" ) );
        $( "#car_interior" ).val( $( "#sliderinterior" ).slider( "value" ) );
        $( "#car_looks" ).val( $( "#sliderlooks" ).slider( "value" ) );
        $( "#car_legroom" ).val( $( "#sliderlegroom" ).slider( "value" ) );

        
});




