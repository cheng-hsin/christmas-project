const video = document.getElementById('video');
const play = document.getElementById('play');
const stop = document.getElementById('stop');
const progress = document.getElementById('progress');
const timestamp = document.getElementById('timestamp');
// Play & pause video
function toggleVideoStatus() {
  if (video.paused) {
    video.play();
  } else {
    video.pause();
  }
}

// update play/pause icon
function updatePlayIcon() {
  if (video.paused) {
    play.innerHTML = '<i class="fa fa-play fa-2x"></i>';
  } else {
    play.innerHTML = '<i class="fa fa-pause fa-2x"></i>';
  }
}

// Update progress & timestamp
function updateProgress() {
  //   console.log(video.currentTime);
  progress.value = (video.currentTime / video.duration) * 100;
  //   console.log(video.duration);

  let mins = Math.floor(video.currentTime / 60);
  //   console.log(typeof mins);
  if (mins < 10) {
    mins = '0' + String(mins);
  }

  let secs = Math.floor(video.currentTime % 60);
  console.log(video.currentTime);
  console.log(secs);
  if (secs < 10) {
    secs = '0' + String(secs);
  }
  if (video.currentTime >= 59) {
    video.currentTime = 0;
  }

  timestamp.innerHTML = `${mins}:${secs}`;
}

// Set video time to progress
function setVideoProgress() {
  //   console.log(typeof video.currentTime);
  //   console.log(typeof progress.value);
  video.currentTime = (+progress.value * video.duration) / 100;
}

// // Stop video
function stopVideo() {
  video.currentTime = 0;
  video.pause();
}

// Event listeners
video.play();
video.addEventListener('click', toggleVideoStatus);
video.addEventListener('pause', updatePlayIcon);
video.addEventListener('play', updatePlayIcon);
play.addEventListener('click', toggleVideoStatus);
stop.addEventListener('click', stopVideo);
progress.addEventListener('change', setVideoProgress);

video.addEventListener('timeupdate', updateProgress);