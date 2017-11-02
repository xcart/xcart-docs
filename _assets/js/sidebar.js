(function($){
  var refresher = function() {
    if (stickyState) {
      $('#navigation-menu').sticky('refresh');
    }
  };

  var stickyState = false;

  var startSticky = function() {
    if (!stickyState) {
      $('#navigation-menu').sticky({
        context: 'article.content',
        offset: 10,
        bottomOffset: 10,
      });

      stickyState = true;
    }
  }

  var disableSticky = function () {
    if (stickyState) {
      $('#navigation-menu').sticky('destroy');
      $('aside.sidebar').css('height', 'auto');
      $('aside.sidebar').css('min-height', 'auto');

      stickyState = false;
    }
  }

  var getViewportWidth = function() {
    return Math.max(document.documentElement.clientWidth, window.innerWidth || 0)
  }

  var intervalId = null;

  if ($('article.content').height() > $('#navigation-menu').height()) {
    $('#navigation-menu').addClass('absolute-bound');
  }

  $(document).ready(function(){
    if (getViewportWidth() > 991) {
      setTimeout(startSticky, 0);
    }

    $(window).resize(function() {
      if (getViewportWidth() > 991) {
        setTimeout(startSticky, 0);
      } else {
        setTimeout(disableSticky, 0);
      }
    });

    $('.content-opener[data-collapse]').click(function() {
      $('.icon', this).toggleClass('plus');
      $('.icon', this).toggleClass('minus');
      $('#navigation-menu').animate({'opacity': 'toggle', 'height': 'toggle'}, 'fast');
    })

    $('#navigation-menu').accordion({
      selector: {
        trigger: '.opener',
        content: '.content',
        title: '.title'
      },
      onOpening: function() {
        intervalId = window.setInterval(refresher, 20);
      },
      onOpen: function() {
        window.clearInterval(intervalId);
      },
      onClosing: function() {
        intervalId = window.setInterval(refresher, 20);
      },
      onClose: function() {
        window.clearInterval(intervalId);
      }
    });
  });
})(jQuery);