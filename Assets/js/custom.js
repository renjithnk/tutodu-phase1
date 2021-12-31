//Sticky Navbar
// When the user scrolls the page, execute myFunction
window.onscroll = function() {myFunction()};

// Get the navbar
var navbar = document.getElementById("ftco-navbar");

// Get the offset position of the navbar
var sticky = navbar.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

//Navigation menu dropdown
$(document).ready(function() {
$('nav .dropdown').hover(function(){
    var $this = $(this);	
    $this.addClass('show');		
    $this.find('> a').attr('aria-expanded', true);		
    $this.find('.dropdown-menu').addClass('show');	
},
function(){
    var $this = $(this);
    $this.removeClass('show');
    $this.find('> a').attr('aria-expanded', false);
    $this.find('.dropdown-menu').removeClass('show');
});
});

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>      
           LayerSlider Settings
    <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
			
$(document).ready(function() {
    _initLayerSlider( '#layerslider_1_1y0mo1tioxocw', {
        sliderVersion: '6.10.2', 
        type: 'fullwidth', 
        responsiveUnder: 1280, 
        hideUnder: 100, 
        hideOver: 100000, 
        pauseOnHover: 1, 
        skin: 'v5', 
        skinsPath: '../Assets/js/layerslider/skins/',
        navStartStop: false, thumbnailNavigation: 'disabled'
        
    }); 
    
});

//Partner carousel

$(document).ready(function() {
    $('.partner-carousel').owlCarousel({
    margin:25,
    autoplay:true,
    singleItem: true,
    autoplayTimeout:3000,
                    nav: true,
    navText: ["<div class='nav-button owl-prev'><img src='../Assets/img/arrow-left.png'></div>", "<div class='nav-button owl-next'><img src='../Assets/img/arrow-right.png'></div>"],
    dots: false,
    autoplayHoverPause:true,
        responsiveClass: true,
                responsive: {
                  0: {
                    items: 3,
                  },
                  600: {
                    items: 3,
                  },
                  768: {
                    items: 4,
                  }
                }
});
            })

//Tutors carousel

$(document).ready(function() {
    $('.tutors-carousel').owlCarousel({
    margin:25,
    autoplay:true,
    singleItem: true,
    autoplayTimeout:3000,
                    nav: true,
    navText: ["<div class='nav-button owl-prev'><img src='../Assets/img/arrow-left.png'></div>", "<div class='nav-button owl-next'><img src='../Assets/img/arrow-right.png'></div>"],
    dots: true,
    autoplayHoverPause:true,
        responsiveClass: true,
                responsive: {
                  0: {
                    items: 1,
                  },
                  600: {
                    items: 2,
                  },
                  1000: {
                    items: 2,
                  }
                }
});
            })

//Popular Courses carousel

$(document).ready(function() {
    $('.popular-carousel').owlCarousel({
    margin:25,
    autoplay:false,
    singleItem: true,
    autoplayTimeout:3000,
                    nav: true,
    navText: ["<div class='nav-button owl-prev'><img src='../Assets/img/tuition-left.png'></div>", "<div class='nav-button owl-next'><img src='../Assets/img/tuition-right.png'></div>"],
    dots: false,
    autoplayHoverPause:true,
        responsiveClass: true,
                responsive: {
                  0: {
                    items: 1,
                  },
                  600: {
                    items: 2,
                  },
                  1000: {
                    items: 4,
                  }
                }
});
            })

//Tuition carousel

$(document).ready(function() {
    $('.tuition-carousel').owlCarousel({
    margin:25,
    autoplay:false,
    singleItem: true,
    autoplayTimeout:3000,
                    nav: true,
    navText: ["<div class='nav-button owl-prev'><img src='../Assets/img/tuition-left.png'></div>", "<div class='nav-button owl-next'><img src='../Assets/img/tuition-right.png'></div>"],
    dots: false,
    autoplayHoverPause:true,
        responsiveClass: true,
                responsive: {
                  0: {
                    items: 1,
                  },
                  600: {
                    items: 2,
                  },
                  1000: {
                    items: 3,
                  }
                }
});
            })


//Academy FAQ carousel

$(document).ready(function() {
    $('.acad-faq-carousel').owlCarousel({
    margin:25,
    autoplay:true,
    singleItem: true,
    autoplayTimeout:3000,
                    nav: false,
    navText: ["<div class='nav-button owl-prev'><img src='../Assets/img/arrow-left.png'></div>", "<div class='nav-button owl-next'><img src='../Assets/img/arrow-right.png'></div>"],
    dots: true,
    autoplayHoverPause:true,
        responsiveClass: true,
        items:1
});
            });

//Tab add active class
$(document).ready(function() {
$('.acourse-tab-nav li a').click(function(e){
    if ($('.acourse-tab-nav li a').hasClass('active')) { 
        $(this)
            // Add .active class to parent li
            .closest('li').addClass('active')
            // remove active class from all sibling li's
            .siblings('li').removeClass('active');
    }
});
});

//Profile expand icon box
$(document).ready(function(){
  /*$(".profile-expand").click(function(){
    $(".profile-icon-section-hidden").fadeToggle();
  });*/
  $(".login-badge").click(function(){
    $(".profile-dropdown").fadeToggle();
  });
});

$(document).ready(function() {
$(document).mouseup(function (e) {
            if ($(e.target).closest(".profile-dropdown").length
                        === 0) {
                $(".profile-dropdown").hide();
            }
        });
});

//radio button
$(function () {
    $('input[name="ctl00$RadioButtonList1"]').on('click', function () {
        if ($(this).val() == 'Organization') {
            $('#org-msg').show();
            $('#stu-msg').hide();
            $('#tut-msg').hide();
        }
        else if ($(this).val() == 'Student') {
            $('#stu-msg').show();
            $('#org-msg').hide();
            $('#tut-msg').hide();
        }

        else if ($(this).val() == 'Tutor') {
            $('#tut-msg').show();
            $('#org-msg').hide();
            $('#stu-msg').hide();
        }
    });
});

//module week
$(".time-hide-1-btn").on('click', function() {
        $(".time-hide-1, .time-hide-11-btn").slideDown();
        $(".time-hide-1-btn").fadeOut();
    });
    $(".time-hide-11-btn").on('click', function() {
        $(".time-hide-1, .time-hide-11-btn").slideUp();
        $(".time-hide-1-btn").fadeIn();
    })

//progress bar
$(document).ready(function() {
      $('.left-progress-bar').easyPieChart({
          barColor: '#2f62ae',
          // The color of the track for the bar, false to disable rendering.
          trackColor: '#e0e0e0',
          // The color of the scale lines, false to disable rendering.
          scaleColor: 'transparent',
          // Defines how the ending of the bar line looks like. Possible values are: butt, round and square.
          lineCap: 'butt',
          // Width of the bar line in px.
          lineWidth: 5,
          // Size of the pie chart in px. It will always be a square.
          size: 180,
          // Time in milliseconds for a eased animation of the bar growing, or false to deactivate.
          animate: 2000,
          // Callback function that is called at the start of any animation (only if animate is not false).
          onStart: $.noop,
          // Callback function that is called at the end of any animation (only if animate is not false).
          onStop: $.noop
      });
});
//WYSIWYG Editor
$(document).ready(function() {
$('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 120,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
});
// calendar
$(document).ready(function() {
$('#NewCalendar').calendar({
    color: '#059cd9',
    months: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    days: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
    onSelect: function (event) {
					$('#lblEventCalendar').text(event.label);
				}});
$('#AttendanceCalendar').calendar({
    color: '#059cd9',
    months: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    days: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
    onSelect: function (event) {
					$('#lblEventCalendar').text(event.label);
				}});
});
//datepicker
$(document).ready(function() {
$(function DateSDate() {
            $('[id*=TxtStartDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd M yyyy",
                language: "tr"

            })
        });
        $(function DateEDate() {
            $('[id*=TxtEndDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd M yyyy",
                language: "tr"

            })
        });
});
$("#ex2").slider({});