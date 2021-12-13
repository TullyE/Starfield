class OddballParticle extends Particle
{
  int opacity = 255;
  int rot = 90;
  int amt = 250;
  OddballParticle(double _x, double _y, double _angle, double _speed)
  {
    super(_x, _y, _angle, _speed);
    this.x = 250;
    this.y = 250;
  }

  void move()
  {
    x = x > width ? 0 : x+5;
  }

  void show()
  {
    fill(255, 0, 0, opacity);
    ellipse((float) x, (float) y, 50, 50);
  }
}
