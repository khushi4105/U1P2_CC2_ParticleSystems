PImage clouds;
PImage umbrella;
ParticleSystem ps = new ParticleSystem(new PVector(random(0, 500), random(0, 30)));

void setup()
{
  size(500, 500);

  clouds = loadImage("cloud.png");
  clouds.resize(200, 150);
  
  umbrella = loadImage("girl.png");
  umbrella.resize(175, 225);

  ps.addParticle();
}

void draw()
{
  background(0);

  image(clouds, -5, -30);
  image(clouds, 300, -30);
  image(clouds, 200, -30);
  image(clouds, 100, -30);
  
  image(umbrella, 175, 260);

  ps.run();
}
