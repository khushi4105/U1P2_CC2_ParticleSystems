class Particle
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle()
  {
    location  = new PVector(random(0,500), random(0,30));
    acceleration = new PVector(0, 0.02);
    velocity = new PVector(random(-1,1), random(-1,-1));
    lifespan = 250;
  }

  void update()
  {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan = lifespan - 0.5;
  }

  void display()
  {
    stroke(165, 222, 237, lifespan);
    fill(165, 222, 237,lifespan);
    ellipse(location.x, location.y, 8,8);
    stroke(0,lifespan);
    fill(250,63,63);
  }
  
  boolean isDead()
  {
   if (lifespan<0.0)
   {
    return true; 
   }
   else
   {
     return false;
   }
  }
  
  void run()
  {
    display();
    update();
  }
}
