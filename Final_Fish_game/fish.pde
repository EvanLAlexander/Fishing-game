public class fish{
  private int r;
  private int b;
  private int g;
  private int fishx;
  private int fishy;
  private int circlex;
  private int circley;
  private boolean hover;
  private int close;
  private int timesClose;
  private int tries = int(random(2,7));
  private int missed;
  private int caught;
  private String text;
  
  public fish(int r, int g, int b){
    this.r = r;
    this.b = b;
    this.g = g;
    this.fishx = int(random(50, 850));
    this.fishy = int(random(50, 850));
    this.circlex = 200;
    this.circley = 200;
    
    
  }
  public void fishing(){
    
  }
  public void draw(){
    fill(r,g,b);
    noStroke();
    ellipse(fishx,fishy,50,50);
    
    noFill();
    stroke(0);
    strokeWeight(3);
    ellipse(fishx,fishy,100,100);
    
    if(mouseX >= fishx -50 && mouseX <= fishx + 50 && mouseY >= fishy -50 && mouseY <= fishy + 50){
      
      stroke(255,0,0);
      strokeWeight(3);
      noFill();
      ellipse(fishx,fishy,circlex,circley);
      
      this.hover = true;
      if(circlex <= 0 && circley <= 0){
      
      this.timesClose += 1;
      this.circley = 200;
      this.circlex = 200;
      }
      if(timesClose == tries ){
      
      this.timesClose = 0;
      this.circley = 200;
      this.circlex = 200;
      this.fishx = int(random(50, 850));
      this.fishy = int(random(50, 850));
      this.missed += 1;
      type = int(random(1,40));
      
      }
     
    }else{
    this.hover = false;
    }

 
  }
  public void mousePressed(){
  if(this.circlex >= 100-5 && this.circlex <= 100 +5 && this.circley >= 100-5 && this.circley <= 100 +5){
    this.fishx = int(random(50, 850));
    this.fishy = int(random(50, 850));
    this.caught += 1;
    type = int(random(1,40));
    
}
  }
}
