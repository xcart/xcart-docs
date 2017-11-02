// version 0.4
(function($){

  var autocompleteCache = {};

  $(document).ready(function(){
    // enable search
      $('.site-search')
        .search({
          type: 'category',
          apiSettings: {
            responseAsync: function(settings, callback) {
              var queryHash = objectHash(settings.urlData.query);
              if (autocompleteCache[queryHash]) {
                var pages = autocompleteCache[queryHash];

                callback({
                  success: pages !== null,
                  results: pages
                });
              } else {
                Search.runAutocompleteQuery(settings.urlData.query)
                .then(function(pages) {
                  autocompleteCache[queryHash] = pages;

                  callback({
                    success: pages !== null,
                    results: pages
                  });
                }, function() {
                  callback({
                    success: false,
                    results: null
                  });
                });
              }
            }
          },
          fields: {
            title   : 'title',
            url     : 'url',
            description: 'description'
          },
          minCharacters : 3
        });

      $('.site-search').keypress(function() {
        var keycode = (event.keyCode ? event.keyCode : event.which);

        // Check for ENTER key
        if (keycode == '13') {
          this.closest('form').submit();
        }
        event.stopPropagation();
      });
  });
})(jQuery);