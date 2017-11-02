(function($){
  $(document).ready(function(){
    $('article img').wrap(function() {
        return '<a class="lightbox-image" href="' + $(this).attr('src') + '">' + this.outerHTML + '</a>';
    });

    $('article .lightbox-image').fluidbox();
  });
})(jQuery);