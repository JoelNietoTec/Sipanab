// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require summernote
//= require summernote/locales/es-ES
//= require summernote/plugin/summernote-ext-video.js
//= require_tree ./shared

$(document).ready(function() {
  $('[data-provider="summernote"]').each(function(){
    $(this).summernote({
      lang: 'es-ES',
      maximumImageFileSize: 1048576,
      toolbar: [
        ['style', ['style']],
        ['style', ['bold', 'italic', 'underline']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']],
        ['table', ['table']],
        ['insert', ['link', 'picture', 'video']],
        ['misc', ['fullscreen', 'codeview', 'undo', 'redo', 'help']]
      ]
    });
  })
});
