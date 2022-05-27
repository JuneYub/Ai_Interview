$('#first').on('keyup', function (e) {
    let content = $(this).val(); // 글자수 세기
    if (content.length == 0 || content == '') {
        $('#first_length').html('0 / 500');
    }
    else {
        $('#first_length').html(content.length + ' / 500');
    }
});

$('#second').keyup(function (e) { 
    let content = $(this).val(); // 글자수 세기
    if (content.length == 0 || content == '') {
        $('#second_length').text('0 / 500');
    }
    else {
        $('#second_length').text(content.length + ' / 500');
    } 
});


