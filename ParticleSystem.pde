class ParticleSystem
{
  ArrayList<Particle> particles; 
  PVector origin;
  int total = 100;

  ParticleSystem(PVector location)
  {
    origin = location.copy();
    particles = new ArrayList();
  }

  void addParticle()
  {

    for (int i=0; i<100; i++)
    {
      particles.add(new Particle());
    }
  }

  void run()
  {
    particles.add(new Particle());
    
    for (int i = particles.size()-1; i>=0; i--)
    {
      Particle p1 = particles.get(i);
      p1.run();

      if (p1.isDead())
      {
        particles.remove(i);
      }
    }
  }
}
