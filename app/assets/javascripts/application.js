//= require jquery
//= require jquery_ujs
//= require jquery.pjax
//= require turbolinks

$(function(){
  $(document).pjax('a[data-pjax]', 'body');
});

//= require_tree .
