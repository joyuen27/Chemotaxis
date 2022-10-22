Bacteria joe;
Bacteria [] joeCount;

 void setup()   
 {     
   size(500,500);
   background(0);
   joe = new Bacteria();
   joeCount = new Bacteria[25];
   int i = 0;
   while (i < joeCount.length){
     joeCount[i] = new Bacteria();
     i++;
   }
   
 }   
 void draw()   
 {    
   background(0);
    for (int i = 0; i < joeCount.length; i++){
      joeCount[i].walk();
      if (i % 3 == 0){
        joeCount[i].fillColorRed();
      } else if (i % 2 == 0){
        joeCount[i].fillColorBlue();
      } else {
        joeCount[i].fillColorGreen();
      }
      joeCount[i].show();
    }
 }  
 class Bacteria    
 {     
   int myX, myY, colorInt;
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     colorInt = (int)(Math.random()*155) + 100;
   }
   void walk(){
     if (myX > 250){
       myX = myX + (int)(Math.random()*5)-3;
     }
     if (myX < 250){
       myX = myX + (int)(Math.random()*5)-1;
     }
     
     if (myY > 250){
       myY = myY + (int)(Math.random()*5)-3;
     }
     if (myY < 250){
       myY = myY + (int)(Math.random()*5)-1;
     }
     
     if (myX == 250){
       myX = (int)(Math.random()*500);;
     }
     if (myY == 250){
       myY = (int)(Math.random()*500);;
     }
   }
   void show(){
     ellipse(myX, myY, (int)(Math.random()*50)+20, (int)(Math.random()*30)+10);
   }
   void fillColorGreen(){
     fill(0,colorInt,0 );
     
   }
   void fillColorBlue(){
     fill(0,0,colorInt );
     
   }
   void fillColorRed(){
     fill(colorInt,0,0 );
     
   }
 }    
