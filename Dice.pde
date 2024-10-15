
 void setup()
  {
    size(400,400);
      noLoop();
  }
  void draw()
  {
  background(0);
        for (int x = 0; x < 3; x++){
        for (int y = 0; y < 3; y++){
          Die A = new Die (50+(x*100),50+(y*100));
            A.roll();
            A.show();
          System.out.print(y);
        }
      }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int X,Y,rolldice,a;
      Die(int x, int y)
      {
          X = x;
          Y = y;
          a = 0;
      }
      void roll()
      {
          rolldice = (int)(Math.random()*6)+1;
      }
      void show()
      {
        fill(255,255,255);
        rect(X,Y,50,50);
        a = 1;
          for( int i = 0; i < rolldice; i = i + 3){
            a = 1;
            while ( a <= 3 && a <= rolldice){
              fill(0,0,0);
              ellipse(X+((i/3)*20)+15,Y+(a*10)+5,5,5);
              a = a + 1;
             System.out.println();
            }
      }
      }
  }
