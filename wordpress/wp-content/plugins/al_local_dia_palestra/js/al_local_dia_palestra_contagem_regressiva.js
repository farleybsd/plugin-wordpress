jQuery(document).ready(function($){
    $('#evento').countdown(data, function(event) {
        //$(this).html(event.strftime('%D days %H:%M:%S'));
        $('#dias').html(event.strftime('%D Dias'));
        $('#horas').html(event.strftime('%H Horas'));
        $('#minutos').html(event.strftime('%M Min.'));
        $('#segundos').html(event.strftime('%S Seg.'));
        console.log(data);
      });
})
