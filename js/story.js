// Generated by CoffeeScript 1.6.3
(function() {
  var cc;

  cc = function() {
    return $.each(arguments, function(i, arg) {
      return console.log(arg);
    });
  };

  $(function() {
    var $skyline, $w, h;
    $w = $(window);
    h = $w.height() / 5;
    $skyline = $(".fuckin-gorgeous");
    $.fn.adata = function(key, val) {
      this.attr("data-" + key, val);
      cc(this.get());
      return this;
    };
    Number.prototype.between = function(low, hi) {
      var val;
      val = this.valueOf();
      return val >= low && val < hi;
    };
    return $w.scroll(function() {
      var $messages, pos;
      pos = Math.floor($w.scrollTop());
      cc(pos);
      if (pos.between(200, 1600)) {
        $messages = $skyline.find(".message-bubble");
        if (pos.between(350, 600)) {
          return (function() {
            return $messages.eq(0).fadeIn("fast");
          })();
        } else if (pos.between(700, 950)) {
          return (function() {
            $skyline.addClass("zoomed").adata("zoom", "one");
            return $messages.slice(1, 3).fadeIn("fast");
          })();
        } else if (pos.between(1150, 1250)) {
          return (function() {
            $skyline.adata("zoom", "ten");
            return $messages.eq(3).fadeIn("fast");
          })();
        } else if (pos.between(1400, 1600)) {
          return (function() {
            cc("unzooming");
            return $skyline.adata("zoom", "");
          })();
        }
      }
    });
  });

}).call(this);
