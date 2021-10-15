Boolean paused;
int seconds;
int minutes;
int hours;
String secondsString;
String minutesString;
String hoursString;

void setup()
{
  size(1000, 200);
  background(0);
}

void draw()
{
  paused = false;
  seconds = frameCount/60;
  minutes = frameCount/3600;
  hours = frameCount/216000;

  secondsString = nf(seconds, 2);
  minutesString = nf(minutes, 2);
  hoursString = nf(hours, 2);

  background(0);
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text(hoursString + ":" + minutesString + ":" + secondsString, width/2, height/2+25);
}

void keyPressed()
{
  if (key=='r')
  {
    frameCount=0;
  }
  if (key=='p')
  {
    if (paused==false)
    {
      noLoop();
      paused = true;
    } else {
      loop();
      paused = false;
    }
  }
}
