$(window).on('load', () => {


    //_____________PRELOADER_________

    let lottieIco = document.querySelector('.main__logo .ico')

    lottieIco?.pause()

    let preloader    = $('.preloader'), 
    imagesCount  = $('img').length,  
    percent      = 100 / imagesCount, 
    progress     = 0, 
    loadedImg    = 0;


    for (let i = 0; i < imagesCount; i++) {
        let img_copy        = new Image();
        img_copy.src        = document.images[i].src;
        img_copy.onload     = img_load;
        img_copy.onerror    = img_load;
    }

    function img_load () {
        progress += percent;
        loadedImg++;
        $('.preloader__percent span').text(progress.toFixed(0))
        if (progress >= 100 || loadedImg == imagesCount) {
            preloader.delay(1000).slideUp(1000);

            setTimeout(() => {
                $('.main__img').css({
                    transform: 'none',
                    opacity: '1',
                })
            }, 2000)

            setTimeout(() => {
                $('.main__logo').css({
                    transform: 'none',
                    opacity: '1',
                })

                lottieIco?.play()
            }, 2200)

            setTimeout(() => {
                $('.fixed-btns').css({
                    transform: 'none',
                })
            }, 2600)

            setTimeout(() => {
                $('.header-main').css({
                    transform: 'none',
                })
            }, 2800)

            setTimeout(() => {
                $('.main__title div').eq(0).css({
                    transform: 'none',
                    opacity: '1',
                })
            }, 2900)

            setTimeout(() => {
                $('.main__title div').eq(1).css({
                    transform: 'none',
                    opacity: '1',
                })
            }, 3200)

            setTimeout(() => {
                $('.main__text').css({
                    transform: 'none',
                    opacity: '1',
                })
            }, 3000)
        }
    }
    



    //______CURSOR________

    if ('ontouchstart' in window) {
        $('.cursor').hide()
    } else {
        $(window).on('mousemove', event => {
            var mouse_x = mouse_y = 0;
            if (document.attachEvent != null) {
                mouse_x = window.event.clientX;
                mouse_y = window.event.clientY;
                console.log(1)
            } else if (!document.attachEvent && document.addEventListener) {
                mouse_x = event.clientX;
                mouse_y = event.clientY;
            }
            
        
            $('.cursor').css({
                top:  `${mouse_y}px`,
                left: `${mouse_x}px`
            })

            $('.cursor-follower').css({
                top:  `${mouse_y}px`,
                left: `${mouse_x}px`
            })
        })
    }
        

    $('html').on('mouseleave', () => {
        $('.cursor').addClass('cursor-leave')
        $('.cursor-follower').addClass('cursor-leave')
    })

    $('html').on('mouseenter', () => {
        $('.cursor').removeClass('cursor-leave')
        $('.cursor-follower').removeClass('cursor-leave')
    })




        
    $('.hover-target').hover(() => {
        $('.cursor').addClass('cursor-grow')
        $('.cursor-follower').addClass('cursor-grow')
    },
    () => {
        $('.cursor').removeClass('cursor-grow')
        $('.cursor-follower').removeClass('cursor-grow')
    })

    $('a').hover(() => {
        $('.cursor').addClass('cursor-grow')
        $('.cursor-follower').addClass('cursor-grow')
    },
    () => {
        $('.cursor').removeClass('cursor-grow')
        $('.cursor-follower').removeClass('cursor-grow')
    })



    //______MOBILE-MENU______


    $('.header-menu').click(() => {
        $('.mobile-menu').slideDown(500)
    })

    $('.mobile-menu__close').click(() => {
        $('.mobile-menu').slideUp(500)
    })


    //______HEADER__________

    

    let header = $('.header').height() 
    let scroll

    if($(window).scrollTop() > header) {
        $('.header').addClass('header-hide')
    }

    $(window).on('scroll', () => {

        let scrollDirection = scroll
        scroll = $(window).scrollTop()

        if(scroll > header) {
            $('.header').addClass('scroll')

            if (scrollDirection > scroll) {
                $('.header').removeClass('header-hide')
            }
            else {           
                $('.header').addClass('header-hide')
            }
        } else {
            $('.header').removeClass('scroll').removeClass('header-hide')
        }

        if($('.service').offset()) {
                    
            if(scroll > $('.service').offset().top) {
                $('.fixed-btns').fadeOut(400)
            } else {
                $('.fixed-btns').fadeIn(400)
            }
        }

            

    })

    


    //______INFRA__________

    $('.infra-list__item').click(function() {
        if($(this).hasClass('active')) {
            $('.infra-list__item').removeClass('active')
            $('.infra-list__dropdown').slideUp(400)
        } else {
            $('.infra-list__item').removeClass('active')
            $('.infra-list__dropdown').slideUp(400)
            $(this).addClass('active')
            $(this).find('.infra-list__dropdown').slideDown(400)
        }
    })
    

    //______ADVANTAGES_________

    if(!('ontouchstart' in window)) {

		$(document).on('mousemove touch', function(e){  
		  $('.advantages-item__img-wrap').each(function() {
		    magnetize(this, e); 
		  });
		});

		function magnetize(el, e){
		  let mX = e.pageX,
		      mY = e.pageY;
		  const item = $(el);
		  
		  const customDist = item.data('dist') * 20 || 400;
		  const centerX = item.offset().left + (item.width()/2);
		  const centerY = item.offset().top + (item.height()/2);
		  
		  let deltaX = Math.floor((centerX - mX)) * -0.25;
		  let deltaY = Math.floor((centerY - mY)) * -0.25;
		  
		  let distance = calculateDistance(item, mX, mY);
		    
		  if(distance < customDist){
		    TweenMax.to(item, 0.5, {y: deltaY, x: deltaX});
		    item.addClass('magnet');
		  }
		  else {
		    TweenMax.to(item, 0.6, {y: 0, x: 0});
		    item.removeClass('magnet');
		  }
		}

		function calculateDistance(elem, mouseX, mouseY) {
		  return Math.floor(Math.sqrt(Math.pow(mouseX - (elem.offset().left+(elem.width()/2)), 2) + Math.pow(mouseY - (elem.offset().top+(elem.height()/2)), 2)));
		}
	}



    //______SERVICE__________

    $('.service-layer div').eq(0).hover(function() {
        $('.service-wrap').css('transform', 'translateX(10%)')
    }, function() {
        $('.service-wrap').css('transform', 'none')
    })
    

    $('.service-layer div').eq(2).hover(function() {
        $('.service-wrap').css('transform', 'translateX(-10%)')
    }, function() {
        $('.service-wrap').css('transform', 'none')
    })

    let serviceIndex = 0

    setInterval(() => {
        if(serviceIndex == 3) {
            serviceIndex = 0
            $('.service-item').removeClass('active')
            $('.service-item').eq(serviceIndex).addClass('active')
        } else {
            serviceIndex++
            $('.service-item').removeClass('active')
            $('.service-item').eq(serviceIndex).addClass('active')
        }
        
    }, 2000)



    //______LAYOUTS__________

    $('.layouts-genplan__img svg path').hover(function() {
        let index = +$(this).data('number')
        $('.layouts-genplan__number').eq(index-1).addClass('active')
    }, function() {
        $('.layouts-genplan__number').removeClass('active')
    })


    //_______GENPLAN AND FLOOR______

    $('.layouts-wrap').scrollLeft($(window).width()/4)


    function init() {
        if (document.layers) document.captureEvents(Event.MOUSEMOVE);
        document.onmousemove = mousemove;
    }

        function mousemove(event) {
        var mouse_x = mouse_y = 0;
        if (document.attachEvent != null) {
            mouse_x = window.event.clientX;
            mouse_y = window.event.clientY;
        } else if (!document.attachEvent && document.addEventListener) {
            mouse_x = event.clientX;
            mouse_y = event.clientY;
        }

        $('.genplan-info').css('top', mouse_y+'px')
        $('.genplan-info').css('left', mouse_x+'px')
    }

    init()

    $('.genplan__img svg path').mouseenter(function() {
        $('.genplan-info').css({
            opacity: '1',
            visibility: 'visible'
        })

        $('.genplan-info__floor').text($(this).data('floor'))
        $('.genplan-info__flats').text($(this).data('flats'))
    })

    $('.genplan__img svg path').mouseleave(function() {
        $('.genplan-info').css({
            opacity: '0',
            visibility: 'hidden'
        })
    })


    $('.floor__img svg path').mouseenter(function() {
        $('.genplan-info').css({
            opacity: '1',
            visibility: 'visible'
        })

        $('.genplan-info__entry').text($(this).data('entry'))
        $('.genplan-info__flat').text($(this).data('flat'))
        $('.genplan-info__rooms').text($(this).data('rooms'))
        $('.genplan-info__square').text($(this).data('square'))

        if($(this).data('reserved') == 1) {
            $('.genplan-info').addClass('reserved')
        }
    })

    $('.floor__img svg path').mouseleave(function() {
        $('.genplan-info').css({
            opacity: '0',
            visibility: 'hidden'
        }).removeClass('reserved')
    })


    //_____FLAT_________

    $('.btn-furniture').click(function(e) {
        e.preventDefault()
        $('.btn-default').removeClass('current')
        $('.flat-main__img .default').hide()
        $(this).addClass('current')
        $('.flat-main__img .furniture').fadeIn(400)
    })


    $('.btn-default').click(function(e) {
        e.preventDefault()
        $('.btn-furniture').removeClass('current')
        $('.flat-main__img .furniture').hide()
        $(this).addClass('current')
        $('.flat-main__img .default').fadeIn(400)
    })

    

    //______FEEBACK_________

    $('.form__tel').inputmask("+\\9\\98 99 999 99 99")


    $('.feedback-open').click((e) => {
        e.preventDefault()
        $('.feedback').fadeIn(600); 
    })



    $('.feedback-close').click(() => {
        $('.feedback').fadeOut(600); 
    })



    $('.feedback').click(e => {
        let div = $(".feedback-content");
        if (!div.is(e.target) 
            && div.has(e.target).length === 0) { 
            $('.feedback').fadeOut(600); 
        }
    })


    //__________WOW____________

    new WOW({
        offset: 50,
        mobile: false
    }).init();


})