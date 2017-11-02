(function($){
  $(document).ready(function(){
    $('article div.highlighter-rouge').each(function(){
        var clipboardBtn = $('<button class="ui icon button clipboard-button"><i class="copy icon"></i></button>');
        clipboardBtn.attr('data-clipboard-text', $(this).text());
        $(this).append(clipboardBtn);
    });

    var clipboard = new Clipboard('.clipboard-button');

    clipboard.on('success', function(e) {
        $(e.trigger).popup({
          on: 'manual',
          content: 'Copied to clipboard'
        });

        $(e.trigger).popup('show');

        setTimeout(function() {
          $(e.trigger).popup('hide');
        }, 1000);
    });
  });
})(jQuery);