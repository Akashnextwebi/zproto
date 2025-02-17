gsap.registerPlugin(ScrollTrigger, SplitText);
gsap.config({
    nullTargetWarn: false,
    trialWarn: false
});
/*----  Functions  ----*/

function getpercentage(x, y, elm) { 
    elm.find('.pbmit-fid-inner').html(y + '/' + x);
    var cal = Math.round((y * 100) / x);
    return cal;
}

function pbmit_title_animation() {

	ScrollTrigger.matchMedia({
		"(min-width: 1025px)": function() {

		var pbmit_var = jQuery('.pbmit-heading, .pbmit-heading-subheading');
		if (!pbmit_var.length) {
			return;
		}
		const quotes = document.querySelectorAll(".pbmit-heading-subheading .pbmit-title, .pbmit-heading .pbmit-title");

			quotes.forEach(quote => {

				//Reset if needed
				if (quote.animation) {
					quote.animation.progress(1).kill();
					quote.split.revert();
				}

				var getclass = quote.closest('.pbmit-heading-subheading, .pbmit-heading').className;
				var animation = getclass.split('animation-');
				if (animation[1] == "style4") return

				quote.split = new SplitText(quote, {
					type: "lines,words,chars",
					linesClass: "split-line"
				});
				gsap.set(quote, { perspective: 400 });

				if (animation[1] == "style1") {
					gsap.set(quote.split.chars, {
						opacity: 0,
						y: "90%",
						rotateX: "-40deg"
					});
				}
				if (animation[1] == "style2") {
					gsap.set(quote.split.chars, {
						opacity: 0,
						x: "50"
					});
				}
				if (animation[1] == "style3") {
					gsap.set(quote.split.chars, {
						opacity: 0,
					});
				}
				quote.animation = gsap.to(quote.split.chars, {
					scrollTrigger: {
						trigger: quote,
						start: "top 90%",
					},
					x: "0",
					y: "0",
					rotateX: "0",
					opacity: 1,
					duration: 1,
					ease: Back.easeOut,
					stagger: .02
				});
			});
		},
	});
}

function pbmit_img_animation() {
	const boxes = gsap.utils.toArray('.pbmit-animation-style1,.pbmit-animation-style2,.pbmit-animation-style3,.pbmit-animation-style4,.pbmit-animation-style5,.pbmit-animation-style6,.pbmit-animation-style7');
	boxes.forEach(img => {
		gsap.to(img, {
			scrollTrigger: {
				trigger: img,
				start: "top 70%",
				end: "bottom bottom",
				toggleClass: "active",
				once: true,
			}
		});
	});
}

function pbmit_extend_section() {
	const pbmit_elm = gsap.utils.toArray('.pbmit-extend-animation');
	if (pbmit_elm.length == 0) return	
	ScrollTrigger.matchMedia({
		"(min-width: 1201px)": function() {
			pbmit_elm.forEach(section => {
				let tl = gsap.timeline({
					scrollTrigger: {
						trigger: section,
						start: "top 50%",
						end: "+=400px",
						scrub: 1
					},
					defaults: { ease: "none" }
				});
				tl.fromTo(section, { clipPath: 'inset(0% 5% 0% 5% round 30px)' }, { clipPath: 'inset(0% 0% 0% 0% round 30px)', duration: 1.5 })	
			});			 
		},
		"(max-width:1200px)": function() {
			ScrollTrigger.getAll().forEach(section => section.kill(true));
		}
	});
}

var pbmit_thia_sticky = function() {	
	jQuery('.pbmit-sticky-sidebar').theiaStickySidebar({
		additionalMarginTop: 100
	});
	jQuery('.pbmit-sticky-column').theiaStickySidebar({
		additionalMarginTop: 120
	});
}

function pbmit_tween_effect() {
	const pbmit_tween = gsap.utils.toArray('.pbmit-tween-effect');
	if (pbmit_tween.length == 0) return
	ScrollTrigger.matchMedia({
		"(min-width: 1025px)": function() {
			pbmit_tween.forEach((box, i) => {
				let tl = gsap.timeline({
					scrollTrigger: {
						trigger: box,
						start: "top 90%",
						end: "bottom 70%",
						scrub: 1
					},
					defaults: { ease: "none" }
				});
				let xpos_val = box.getAttribute('data-x-start');
				let xpose_val = box.getAttribute('data-x-end');
				let ypos_val = box.getAttribute('data-y-start');
				let ypose_val = box.getAttribute('data-y-end');
				let scale_x_val = box.getAttribute('data-scale-x-start');
				let scale_xe_val = box.getAttribute('data-scale-x-end');
				let skew_x_val = box.getAttribute('data-skew-x-start');
				let skew_xe_val = box.getAttribute('data-skew-x-end');
				let skew_y_val = box.getAttribute('data-skew-y-start');
				let skew_ey_val = box.getAttribute('data-skew-y-end');
				let rotation_x_val = box.getAttribute('data-rotate-x-start');
				let rotation_xe_val = box.getAttribute('data-rotate-x-end');
				gsap.set(box, { xPercent: xpos_val, yPercent: ypos_val, scale: scale_x_val, skewX: skew_x_val, skewY: skew_y_val, rotation: rotation_x_val });
				tl.to(box, { xPercent: xpose_val, yPercent: ypose_val, scale: scale_xe_val, skewX: skew_xe_val, skewY: skew_ey_val, rotation: rotation_xe_val })
			});
		},
		"(max-width:1024px)": function() {
			ScrollTrigger.getAll().forEach(section => section.kill(true));
		}
	});
}

function pbmit_testimonial_review() {
	jQuery(".pbmit-element-testimonial-style-3").each(function() {
		if (typeof Swiper !== 'undefined') {
			var pbmit_blockquote = new Swiper('.pbmit-gallery-top', {
				spaceBetween: 0,
				loop:true,
				loopedSlides: 5, //looped slides should be the same
				centeredSlides: true,
				grabCursor: true,
				autoplay: {
					delay: 5000,
					disableOnInteraction: false,
				},
				navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
				},
			});
			var pbmit_thumb = new Swiper('.pbmit-gallery-thumbs', {
				spaceBetween: 0,
				loop: true,
				slidesPerView: 5,
				loopedSlides: 5, //looped slides should be the same
				slideToClickedSlide: true,
				centeredSlides: true,
				grabCursor: true,
			});
			pbmit_blockquote.controller.control = pbmit_thumb;
			pbmit_thumb.controller.control = pbmit_blockquote;
		}
	});
}

function pbmit_staticbox_hover() {
	var pbmit_var = jQuery('.pbmit-element-static-box-style-1');
	if (!pbmit_var.length) {
		return;
	}
	pbmit_var.each(function() {
		var pbmit_Class = ' .swiper-static-slide-nav li, .pbmit-hover-inner li, .pbmit-static-box-style-1';
		jQuery(this)
			.find(pbmit_Class).first()
			.addClass('pbmit-active');
		jQuery(this)
			.find(pbmit_Class)
			.on('mouseover', function() {
				jQuery(this).addClass('pbmit-active').siblings().removeClass('pbmit-active');
			});
	});
}

function pbmit_team_move() {
	const pbmit_elm = gsap.utils.toArray('.pbmit-team-style-2:nth-child(even),.pbmit-team-style-2:nth-child(odd)');
	if (pbmit_elm.length == 0) return
	ScrollTrigger.matchMedia({
		"(min-width: 1025px)": function() {
			gsap.set(".pbmit-team-style-2:nth-child(even)", { yPercent: 60, })
			gsap.set(".pbmit-team-style-2:nth-child(odd)", { yPercent: -60, })
			gsap.to(".pbmit-team-style-2:nth-child(even)", {
				yPercent: -50,
				scrollTrigger: {
					scrub: true,
					start: () => "top top", 
					end:() =>  "bottom top",
					scrub:1
				}
			});
			gsap.to(".pbmit-team-style-2:nth-child(odd)", {
				yPercent: 50,
				scrollTrigger: {
					scrub: true,
					start:() =>  "top top",
					end: () => "bottom top",
					scrub:1
				}
			});
		},
		"(max-width:1024px)": function() {
			ScrollTrigger.getAll().forEach(pin => pin.kill(true));
		}
	});
}

// function pbmit_sticky_special() {
// 	if (jQuery('.pbmit-sticky-col2-special').hasClass('.elementor-element-edit-mode')) {
// 		return;
// 	}
// 	ScrollTrigger.matchMedia({
// 		"(min-width: 1025px)": function() { 
// 			let pbmit_sticky_2 = jQuery(".pbmit-sticky-col2-special");
// 			let section = jQuery('.pbmit-sticky-special'); 
// 			let section_height = pbmit_sticky_2.height();
// 			const tweenOne = gsap.to(pbmit_sticky_2, {
// 				y: - (section_height - 700),
// 				scrollTrigger: {
// 				  trigger: section,
// 				  pin: section,
// 				  scrub: true,
// 				  start: "top top+=140px",
// 				  end: () => '+=' + (section_height - 700),
// 				}
// 			}); 
// 		},
// 		"(max-width:1024px)": function() {
// 			ScrollTrigger.getAll().forEach(section => section.kill(true));
// 		}
// 	}); 
// }

ScrollTrigger.matchMedia({
    "(max-width: 1200px)": function() {
        ScrollTrigger.getAll().forEach(t => t.kill());
    }
});


// on ready
jQuery(document).ready(function() {
	pbmit_title_animation();
	pbmit_extend_section();
	pbmit_staticbox_hover();
	pbmit_thia_sticky();
	pbmit_testimonial_review();
});

// on resize
jQuery(window).resize(function() {
	pbmit_title_animation();
	pbmit_img_animation();
	setTimeout(function() { pbmit_thia_sticky(); }, 500);
});

// on load
jQuery(window).on('load', function(){
	pbmit_img_animation();
	pbmit_tween_effect();
	pbmit_team_move();
	// pbmit_sticky_special();
	
	
	jQuery('[data-magnetic]').each(function() { new Magnetic(this); });
	gsap.delayedCall(1, () =>
		ScrollTrigger.getAll().forEach((t) => {
			t.refresh();
		})
	);	
	
	setTimeout(cleaning, 500);
	function cleaning(){
		ScrollTrigger.refresh(); 
	}
});