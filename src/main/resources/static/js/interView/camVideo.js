function load(videoId) {
    var video = document.getElementById(videoId);
    if (navigator.webkitGetUserMedia) {
        navigator.webkitGetUserMedia({audio: false, video: true},
            function (stream) {
                video.srcObject = stream;
                // video.play();
            },
            function (error) {
                alert('ERROR: ' + error.toString());
            });
    } else {
        alert('webkitGetUserMedia not supported');
    }
}