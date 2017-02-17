// Javascript code for the Main controller

function centerImageOnScreen(image) {
  var window_height = window.innerHeight;
  var window_width = window.innerWidth;
  var maximal_height = window_height * 0.96;
  var maximal_width = window_width * 0.96;
  var ratio = image.width() / image.height();

  if ((maximal_height - image.height()) < (maximal_width - image.width())) {
    image.height(maximal_height);
  } else {
    image.height(maximal_width * ratio);
  }

  if (image.height() > maximal_height) {
    image.height(maximal_height);
  }

  if (image.width() > maximal_width) {
    image.height(maximal_width * ratio);
  }

  var width = image.width();
  var height = image.height();

  console.log("width:", width);
  console.log("height:", height);

  var top_pos = (window_height-height)/2;
  var left_pos = (window_width-width)/2;

  image.offset({ top: top_pos + $("body").scrollTop(), left: left_pos });
}

function onGandySoftShowReady() {
  var screenshots = $(".screenshot");
  var blanket = $("<div />").addClass("blanket").attr("style", "display: none");
  var blanket_image = $("<img />").addClass("blanket_image").attr("style", "display: none; position: absolute");

  var hideBlanketAndImage = function() {
    blanket.hide();
    blanket_image.hide();
    blanket_image.attr("src", "");
  };

  var centerBlanketImage = function() {
    if (blanket.is(":visible")) {
      centerImageOnScreen(blanket_image);
    }
  };

  $("body").append(blanket);
  $("body").append(blanket_image);

  blanket.click(hideBlanketAndImage);
  blanket_image.click(hideBlanketAndImage);
  $(document).keyup(function(event) {
    if (event.keyCode == 27) {
        hideBlanketAndImage();
    }
  });

  $(window).scroll(centerBlanketImage);
  $(window).resize(centerBlanketImage);

  screenshots.click(function() {
    var screenshot = $(this);

    if (blanket.is(":visible")) {
        return;
    }

    blanket.show();
    blanket_image.attr("src", screenshot.attr("src"));
    blanket_image.show();
    centerImageOnScreen(blanket_image);
  });
}
