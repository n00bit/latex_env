/*$(document).ready (function() {
 $('.devop').click(
 function () {
 alert('Warning!!!');

 });

 });*/

$(document).ready(function () {
  $('.devop').bind('click', function () {
    alert('Warning!!!');
  });

  $('#select-all-select').click(
    function () {
      $('input.test').attr('checked', 'checked');
    }
  );
});


$(document).on('click', '.devop', function () {
  alert('Warning!!!');
});

$(document).ready(function () {

  $('.leaf').each(
    function () {
      $(this).click(
        function () {
          $(this).after($('<div class="devop">Cool</div>'));
        });
    });
})

/*


 $(document).on('click', '.devop', function() {
 $(this).after($('<div class="devop">Cool 2</div>'));
 });
 */
