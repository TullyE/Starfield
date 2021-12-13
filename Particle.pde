import javax.sound.sampled.*;
import java.net.URL;

class Particle
{
  double x;
  double y;
  double angle;
  double speed;
  int opacity = 255;
  int blink = (int) (Math.random() * 255);
  color mc = color(255, 255, blink);
  boolean in = (int) (Math.random() * 2) == 0;

  Particle(double _x, double _y, double _angle, double _speed)
  {
    this.x = _x;
    this.y = _y;
    this.angle = _angle;
    this.speed = _speed;
  }

  void move()// throws Exception
  {
    this.x += Math.cos(angle) * this.speed;
    this.y += Math.sin(angle) * this.speed;
    if (opacity < 255)
    {
      opacity += 10;
    }
    if (this.x < -10 || this.y > 510)
    {
      opacity = 0;
      this.x = (int) (Math.random() * 500);
      this.y = (int) (Math.random() * 500);
      //URL file = new URL("file:///" + System.getProperty("user.dir") + "/audio" + "/Marcos%20H.%20Bolanos%20-%20A%20Simple%20Life.wav");
      //System.out.println("file:///" + System.getProperty("user.dir") + "/audio" + "/Marcos%20H.%20Bolanos%20-%20A%20Simple%20Life.wav");
      //AudioInputStream ais = AudioSystem.getAudioInputStream(file);
      //Clip clip = AudioSystem.getClip();
      //clip.open(ais);
      //clip.setFramePosition(0);
      //clip.start();
    }
  }

  void breath()
  {
    blink = in ? blink + 3 : blink - 3; // in is true getting bigger
    in = in ? blink > 255 ? false : true : blink < 1 ? true : false;
    mc = color(255, 255, blink);

  }

  void show()
  {
    noStroke();
    fill(mc, opacity);
    ellipse((float) this.x, (float) this.y, 10, 10);
  }
}
