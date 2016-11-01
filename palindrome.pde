String time, hour, minute;
void setup() {
  fullScreen();
}

void draw() {
  fill(255);
  textSize(width/4);
  textAlign(CENTER, CENTER);
  if (hour()>10) {
    hour=str(hour());
  } else {
    hour="0"+str(hour());
  }
  if (minute()>10) {
    minute=str(minute());
  } else {
    minute="0"+str(minute());
  }
  time=hour+":"+minute;
  char[] charTime=time.toCharArray();
  charTime=reverse(charTime);
  String timeBackwards="";
  for (int i=0; i<time.length(); i++) {
    timeBackwards+=charTime[i];
  }
  if (timeBackwards==time) {
    background(random(0, 255));
  } else {
    background(10);
  }
  text(time, width/2, height/2);
}