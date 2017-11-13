(function($){

  function setActiveClassInSidebar(menu) {
    var link = menu.find('[href="' + window.location.pathname + '"]');
    var menuItem = link.closest('.anchor-link');
    if (menuItem.length > 0) {
        menuItem.addClass('active');

        var traverser = menuItem.closest('.content.menu');
        while (traverser.length > 0) {
            traverser.addClass('active');
            traverser = traverser.parent().closest('.content.menu');
        }
    }
  }

  // $(document).ready(function(){
    var menu = $('#navigation-menu');

    if (menu.length > 0) {
        setActiveClassInSidebar(menu);
    }
  // });
})(jQuery);