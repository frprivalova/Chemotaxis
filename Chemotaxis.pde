//declare bacteria variables here   
Bacteria [] bob;
 void setup()   
 {     
   //initialize bacteria variables here 


   size(300,300);
   bob = new Bacteria [100];
   for (int i = 0; i < bob.length; i++)
     bob[i] = new Bacteria();
   
 }   
 void draw()   
 {    
   background (0);
    for (int i = 0; i < bob.length; i++){
       bob[i].show();
       bob[i].walk();
    }
 
 }  
 void mousePressed()
 {
  // bob[i].walk();
   redraw();
 }
 class Bacteria    
 {     
     int myX, myY, myColor;
  //myColor = (255,0,0);
   Bacteria(){
     
     //mySize = 80;
     myX = 150;
     myY = 150;
   }
   void walk()
   {
     if(mouseX > myX)
       myX = myX + (int)(Math.random()*10)-2;
     else
       myX = myX + (int)(Math.random()*10)-6;
       if(mouseY > myY)
       myY = myY + (int)(Math.random()*10)-2;
     else
       myY = myY + (int)(Math.random()*10)-6;
     //myX = myX + (int)(Math.random()*4-2);
     //myY = myY + (int)(Math.random()*4-2);
   }
   
   void show()
   {
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     ellipse(myX,myY,7,7); 
     
   }
 
 }
 