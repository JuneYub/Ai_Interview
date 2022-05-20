function load(videoId) {
    var video = document.getElementById(videoId);
    if (navigator.webkitGetUserMedia) {
        navigator.webkitGetUserMedia({audio: true, video: true},
            function (stream) {
                video.src = webkitURL.createObjectURL(stream);
            },
            function (error) {
                alert('ERROR: ' + error.toString());
            });
    } else {
        alert('webkitGetUserMedia not supported');
    }
}