$('.welcome-vid').on('ended', function () {
  this.load();
  this.play();
});
