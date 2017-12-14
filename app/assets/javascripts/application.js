// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require_tree .

var currentScore = 0;

$(document).ready(function () {
  const array = $('input').toArray();
  for (var i = 0; i < array.length; i++) {
    if (i === 0) {
      continue;
    }
    if ($('input').eq(i - 1).val() === '') {
      $('input').eq(i).prop('disabled', true);
    } else {
      $('input').eq(i).prop('disabled', false);
    }
  }
});

$(document).on('focusin', 'input', function(){
    $(this).data('val', $(this).val());
});

$(document).on('change', 'input', function () {
  var prev = $(this).data('val');
  if (prev === '') {
    prev = 0;
  } else if (prev === 'x' || prev === 'X') {
    prev = 10;
  } else {
    prev = parseInt(prev);
  }

  var cur = $(this).val();
  if (cur === '') {
    cur = 0;
    // enable next input
    const i = $('input').index($(this));
    $('input').eq(i + 1).prop('disabled', false);

  } else if (cur === 'x' || cur === 'X') {
    cur = 10;

    // enable the one after next input
    const i = $('input').index($(this));
    $('input').eq(i + 1).val('-');
    $('input').eq(i + 2).prop('disabled', false);
  } else if(isNaN(parseInt(cur))) {
    $(this).val('');
  } else {
    cur = parseInt(cur);

    // enable next input
    const i = $('input').index($(this));
    $('input').eq(i + 1).prop('disabled', false);
  }

  //calculate score
  currentScore = currentScore - prev + cur;
  $('.js-final-score-text').text(currentScore);
  $('.js-final-score-val').val(currentScore);
});
