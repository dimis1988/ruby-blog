// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('jquery')

import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import '../css/application.scss'

import 'aos/dist/aos.js'
import 'jquery-migrate/dist/jquery-migrate.min'
import 'popper.js/dist/popper.js'
import 'bootstrap/dist/js/bootstrap.js'
import 'owl.carousel/dist/owl.carousel.min.js'
import 'imagesloaded/imagesloaded.pkgd.js'
import 'isotope-layout/dist/isotope.pkgd.min.js'
import 'jquery.animate-number/jquery.animateNumber.min.js'
require('waypoints/lib/jquery.waypoints.min.js')
require('waypoints/src/waypoint.js')
import 'jquery.lettering'
import 'jquery.stellar.min'
import 'jarallax/dist/jarallax.min.js'
import 'jarallax-element.min.js'
import 'jquery-fancybox/source/js/jquery.fancybox.js'
import 'TweenMax.min'
require('scrollmagic/scrollmagic/uncompressed/ScrollMagic.js')
import 'scrollmagic-plugins/plugins/animation.gsap.js'
import 'scrollmagic-plugins/plugins/debug.addIndicator.js'
import 'custom'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

// Test jQuery
// $(document).ready(function() {
//     console.log('jQuery is working!');
//   });
