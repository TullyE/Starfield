ArrayList <Particle> myPs = new ArrayList <Particle> ();

void setup()
{
  size(500, 500);
  for (int i = 0; i < 200; i ++)
  {
    myPs.add(new Particle((int) (Math.random() * 500), (int) (Math.random() * 500), 15, 1));
  }
  myPs.add(new OddballParticle((int) (Math.random() * 500), (int) (Math.random() * 500), 10, 1));
}
void draw()
{
  background(0);
  for (Particle p : myPs)
  {
    p.move();
    p.show();
    p.breath();
  }
}
