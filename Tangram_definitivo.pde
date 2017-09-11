int x1=276;
int y1=711;
int x2=64;
int y2=675;
int x3=345;
int y3=741;
int x4=519;
int y4=718;
int x5=417;
int y5=692;
int x6=516;
int y6=623;
int x7=150;
int y7=733;
int k=0;
int r2=0;
int r3=0;
int r4=0;
int r5=0;
int r6=0;
int r7=0;
int fig=1;
int counter=0;
PImage img;
PImage i2;
PImage i3;
PImage i4;
PImage i5;
PImage i6;
color c1=color(112,48,160);
color c2=color(102,0,255);
color c3=color(102,0,102);
int g=0;

void setup() {
 size(564, 797);
 img = loadImage("4.jpg");
 i2=loadImage("Imagen1.png");
 i3=loadImage("Imagen2.png");
 i4=loadImage("Imagen4.png");
 i5=loadImage("Imagen5.png");
 i6=loadImage("Imagen6.png");
}
void draw() {
 if(counter==0){
  noStroke();
 image(img, 0, 0);
 image(i2, 100, 100);
 rect(95,300,350,250,50);
 image(i3, 100, 300);
 fill(255,255,255,100);}
 if((get(mouseX,mouseY)==c1)&&mousePressed){
   counter=3;
 }else if(c2==get(mouseX,mouseY)&&mousePressed){
   counter=2;
 }else if(c3==get(mouseX,mouseY)&&mousePressed){
   counter=1;
 }
 if(counter==1){
   fondo1();
   image(i5, 30, 100);
 if(keyPressed&& (key==CODED)){
   if(keyCode==RIGHT){
     counter=0;
     }
   }
 }else if(counter==2){
   fondo1();
   image(i6, 30, 70);
   if(keyPressed&& (key==CODED)){
   if(keyCode==RIGHT){
     counter=0;
     }
   }
 }else if(counter==3){ 
 fondo();
  fill(-3407719);
  triangle(176, 671, 376, 671, 276, 771);
  fill(-13408513);
  triangle(24, 575, 24,775, 124, 675);
  fill(-39424);
  triangle(338-40-3, 741+30-5, 438-40-3, 741+30-5, 388-40-3, 691+30-5);
  fill(-13382605);
  triangle(519+20+5, 718+50, 519+20+5, 618+50, 419+20+5, 718+50);
  fill(-6749953);
  triangle(417-30, 692, 467-30, 742, 467-30, 642);
  fill(-256);
  quad(200+340+2, 500+50+5,200+340+2, 100+500+50+5, 150+340+2, 150+500+50+5, 150+340+2, 50+500+50+5);
  fill(-65434);
  quad(50+50, 150+580, 100+50, 200+580, 150+50, 150+580, 100+50, 100+580);
  counter=4;
  
 }else if(counter==4){
   for(int i=50;i<500;i+=10){
    for(int j=90;j<500;j+=10){
      get(i,j);
      if(get(i,j)==color(0)){
         g++; 
      }
    }
  }
  if(g>10){
    g=0;
  }else {
    fig++;
    fondo();
    inicial();
    g=0;
    if(fig==8){
      counter=5;  
  }
    
    
  }
   
   stroke(0);
 if(mousePressed && get(mouseX,mouseY)==-3407719){ //F 1
   fondo();
   f1i();
   f2();
   f3();
   f4();
   f5();
   f6();
   f7();
   
   
 }
 if(mousePressed && get(mouseX,mouseY)==-13408513){//F 2
   fondo();
   f2i();   
   f1();
   f3();
   f4();
   f5();
   f6();
   f7();
 }
 if(mousePressed && get(mouseX,mouseY)==-39424){//F 3
   fondo();
   f3i();
   f1();
   f2();
   f4();
   f5();
   f6();
   f7();
 }
 if(mousePressed && get(mouseX,mouseY)==-13382605){//F 4
   fondo();
   f4i();
   f1();
   f2();
   f3();
   
   f5();
   f6();
   f7();
 }
 if(mousePressed && get(mouseX,mouseY)==-6749953){//F 5
   fondo();
   f5i();
   f1();
   f2();
   f3();
   f4();
   
   f6();
   f7();
 }
 if(mousePressed && get(mouseX,mouseY)==-256){//F 6
   fondo();
   f6i();
   f1();
   f2();
   f3();
   f4();
   f5();
   
   f7();
 }
 if(mousePressed && get(mouseX,mouseY)==-65434){//F 7
   fondo();
   f7i();
   f1();
   f2();
   f3();
   f4();
   f5();
   f6();
   }
  } else if(counter==5){
    fondo1();
   image(i4, 50, 100);
 }
 }
 
 

void fondo1(){
   image(img, 0, 0);
   fill(255,255,255,100);
   noStroke();
   rect(30,80,500,500,50);
   fill(0);
}
void fondo(){
   image(img, 0, 0);
   fill(255,255,255,100);
   noStroke();
   rect(30,80,500,500,50);
   fill(0);
   nivel();

}
void f1i(){
pushMatrix();
   switch (k){
   case 1:
     translate(mouseX-30, mouseY-50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 2:
     translate(mouseX+30, mouseY-70);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 3:
     translate(mouseX+80, mouseY-50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 4:
     translate(mouseX+100, mouseY+50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 5:
     translate(mouseX+30, mouseY+100);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 6:
     translate(mouseX-30, mouseY+100);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 7:
     translate(mouseX-100, mouseY+50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   default:
   translate(mouseX-100, mouseY-40);
   fill(-3407719);
   triangle(0, 0, 200, 0, 100, 100);
     break;
   
   }
   x1=mouseX;
   y1=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x1, y1);
       fill(-3407719);
       if(k<7){
         k++;
       }else{
         k=0;
       }
       rotate(k*radians(45));
       triangle(0, 0, 200, 0, 100, 100);

     }
   popMatrix();

}
void f1(){
 
 pushMatrix();
   switch (k){
   case 1:
     translate(x1-30, y1-50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 2:
     translate(x1+30, y1-70);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 3:
     translate(x1+80, y1-50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 4:
     translate(x1+100, y1+50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 5:
     translate(x1+30, y1+100);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 6:
     translate(x1-30, y1+100);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   case 7:
     translate(x1-100,y1+50);
     rotate(k*radians(45));
     fill(-3407719);
     triangle(0, 0, 200, 0, 100, 100);
     break;
   default:
   translate(x1-100, y1-40);
   fill(-3407719);
   triangle(0, 0, 200, 0, 100, 100);
     break;
   
   }
   popMatrix();
 
 }
 
  void f2i(){
 pushMatrix();
   switch (r2){
   case 1:
     translate(mouseX+50, mouseY-80);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 2:
     translate(mouseX+100, mouseY-40);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 3:
     translate(mouseX+80, mouseY+50);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 4:
     translate(mouseX+50, mouseY+100);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 5:
     translate(mouseX-30, mouseY+100);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 6:
     translate(mouseX-80, mouseY+50);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 7:
     translate(mouseX-100, mouseY-50);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   default:
   translate(mouseX-40, mouseY-100);
   fill(-13408513);
   triangle(0, 0, 0, 200, 100, 100);
     break;
   
   }
   x2=mouseX;
   y2=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x2, y2);
       fill(-13408513);
       if(r2<7){
         r2++;
       }else{
         r2=0;
       }
       rotate(r2*radians(45));
       triangle(0, 0, 0, 200, 100, 100);

     }
   popMatrix();
 
 
 }
 void f2(){
 pushMatrix();
   switch (r2){
   case 1:
     translate(x2+50, y2-80);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 2:
     translate(x2+100, y2-40);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 3:
     translate(x2+80, y2+50);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 4:
     translate(x2+50, y2+100);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 5:
     translate(x2-30, y2+100);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 6:
     translate(x2-80, y2+50);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   case 7:
     translate(x2-100, y2-50);
     rotate(r2*radians(45));
     fill(-13408513);
     triangle(0, 0, 0, 200, 100, 100);
     break;
   default:
   translate(x2-40, y2-100);
   fill(-13408513);
   triangle(0, 0, 0, 200, 100, 100);
     break;
   
   }
   popMatrix();
 
 
 }
 
 
 void f3i(){
 
   pushMatrix();
   switch (r3){
   case 1:
     translate(mouseX+100, mouseY-160);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 2:
     translate(mouseX+185, mouseY-40);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 3:
     translate(mouseX+175, mouseY+100);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 4:
     translate(mouseX+50, mouseY+175);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 5:
     translate(mouseX-100, mouseY+175);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 6:
     translate(mouseX-175, mouseY+50);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 7:
     translate(mouseX-160, mouseY-100);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   default:
     translate(mouseX-50, mouseY-175);
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   
   }
   x3=mouseX;
   y3=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x3,y3);
       fill(-39424);
       if(r3<7){
         r3++;
       }else{
         r3=0;
       }
       rotate(r3*radians(45));
       translate( 0, -200);
       triangle(0, 200, 100, 200, 50, 150);

     }
   popMatrix();
 
 }
 void f3(){
 pushMatrix();
   switch (r3){
   case 1:
     translate(x3+100, y3-160);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 2:
     translate(x3+185, y3-40);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 3:
     translate(x3+175, y3+100);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 4:
     translate(x3+50, y3+175);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 5:
     translate(x3-100, y3+175);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 6:
     translate(x3-175, y3+50);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   case 7:
     translate(x3-160, y3-100);
     rotate(r3*radians(45));
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   default:
     translate(x3-50, y3-175);
     fill(-39424);
     triangle(0, 200, 100, 200, 50, 150);
     break;
   }
   popMatrix();
 
 }
 
 
 
 void f4i(){
 pushMatrix();
   switch (r4){
   case 1:
     translate(mouseX, mouseY-230);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 2:
     translate(mouseX+175, mouseY-150);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 3:
     translate(mouseX+240, mouseY+20);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 4:
     translate(mouseX+175, mouseY+175);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 5:
     translate(mouseX, mouseY+250);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 6:
     translate(mouseX-160, mouseY+175);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 7:
     translate(mouseX-225, mouseY);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   default:
   translate(mouseX-175, mouseY-150);
   fill(-13382605);
   triangle(200, 200, 200, 100, 100, 200);
     break;
   
   }
   x4=mouseX;
   y4=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x4,y4);
       if(r4<7){
         r4++;
       }else{
         r4=0;
       }
       rotate(r4*radians(45));
       fill(-13382605);
       translate( -200, -100);
       triangle(200, 200, 200, 100, 100, 200);

     }
   popMatrix();
 
 }
 
 void f4(){
 
    pushMatrix();
   switch (r4){
   case 1:
     translate(x4, y4-230);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 2:
     translate(x4+175, y4-150);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 3:
     translate(x4+240, y4+20);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 4:
     translate(x4+175, y4+175);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 5:
     translate(x4, y4+250);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 6:
     translate(x4-160, y4+175);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   case 7:
     translate(x4-225, y4);
     rotate(r4*radians(45));
     fill(-13382605);
     triangle(200, 200, 200, 100, 100, 200);
     break;
   default:
   translate(x4-175, y4-150);
   fill(-13382605);
   triangle(200, 200, 200, 100, 100, 200);
     break;
   
   }
   popMatrix();
 }
 
 
 void f5i(){
 pushMatrix();
   switch (r5){
   case 1:
     translate(mouseX-20, mouseY-160);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 2:
     translate(mouseX+100, mouseY-125);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 3:
     translate(mouseX+160, mouseY-30);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 4:
     translate(mouseX+125, mouseY+100);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 5:
     translate(mouseX+30, mouseY+160);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 6:
     translate(mouseX-100, mouseY+130);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 7:
     translate(mouseX-175, mouseY+20);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   default:
     translate(mouseX-130, mouseY-100);
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   
   }
   x5=mouseX;
   y5=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x5,y5);
       if(r5<7){
         r5++;
       }else{
         r5=0;
       }
       rotate(r5*radians(45));
       fill(-6749953);
       translate( -100, -100);
       triangle(100, 100, 150, 150, 150, 50);

     }
   popMatrix();
 }
 void f5(){
  pushMatrix();
   switch (r5){
   case 1:
     translate(x5-20, y5-160);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 2:
     translate(x5+100, y5-125);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 3:
     translate(x5+160, y5-30);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 4:
     translate(x5+125, y5+100);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 5:
     translate(x5+30, y5+160);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 6:
     translate(x5-100, y5+130);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   case 7:
     translate(x5-175, y5+20);
     rotate(r5*radians(45));
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   default:
     translate(x5-130, y5-100);
     fill(-6749953);
     triangle(100, 100, 150, 150, 150, 50);
     break;
   
   }
   popMatrix();
 
 }
 
 
 void f6i(){
 pushMatrix();
   switch (r6){
   case 1:
     translate(mouseX-80, mouseY-180);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 2:
     translate(mouseX+80, mouseY-175);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 3:
     translate(mouseX+175, mouseY-80);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 5:
     translate(mouseX+80, mouseY+175);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 6:
     translate(mouseX-80, mouseY+175);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 7:
     translate(mouseX-175, mouseY+80);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   default:
     translate(mouseX-175, mouseY-70);
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   
   }
   x6=mouseX;
   y6=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x6, y6);
       if(r6<7){
         r6++;
       }else{
         r6=0;
       }
       rotate(r6*radians(45));
       fill(-256);
       translate( -200, 0);
       quad(200, 0,200, 100, 150, 150, 150, 50);
     }
   popMatrix();
 
 }
 void f6(){
 pushMatrix();
   switch (r6){
   case 1:
     translate(x6-80, y6-180);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 2:
     translate(x6+80, y6-175);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 3:
     translate(x6+175, y6-80);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 5:
     translate(x6+80, y6+175);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 6:
     translate(x6-80, y6+175);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   case 7:
     translate(x6-175, y6+80);
     rotate(r6*radians(45));
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   default:
     translate(x6-175, y6-70);
     fill(-256);
     quad(200, 0,200, 100, 150, 150, 150, 50);
     break;
   
   }
   popMatrix();
 
 }
 
 
 void f7i(){
 pushMatrix();
   switch (r7){
   case 1:
     translate(mouseX+30, mouseY-175);
     rotate(r7*radians(45));
     fill(-65434);
     quad(50, 150, 100, 200, 150, 150, 100, 100);
     break;
   default:
     translate(mouseX-100, mouseY-150);
     fill(-65434);
     quad(50, 150, 100, 200, 150, 150, 100, 100);
     break;
   
   }
   x7=mouseX;
   y7=mouseY;
   if(mouseButton==RIGHT){
       pushMatrix();
       resetMatrix();
       fondo();
       popMatrix();
       resetMatrix();
       translate( x7, y7);
       if(r7==0){
         r7++;
       }else{
         r7=0;
       }
       rotate(r7*radians(45));
       fill(-65434);
       translate(-100,-200);
       quad(50, 150, 100, 200, 150, 150, 100, 100);

     }
   popMatrix();
 
 }
 void f7(){
  pushMatrix();
   switch (r7){
   case 1:
     translate(x7+30, y7-175);
     rotate(r7*radians(45));
     fill(-65434);
     quad(50, 150, 100, 200, 150, 150, 100, 100);
     break;
   default:
     translate(x7-100, y7-150);
     fill(-65434);
     quad(50, 150, 100, 200, 150, 150, 100, 100);
     break;
   
   }
   popMatrix();
 }
 
void inicial(){
  resetMatrix();
  x1=276;
  y1=711;
  x2=64;
  y2=675;
  x3=345;
  y3=741;
  x4=519;
  y4=718;
  x5=417;
  y5=692;
  x6=516;
  y6=623;
  x7=150;
  y7=733;
  k=0;
  r2=0;
  r3=0;
  r4=0;
  r5=0;
  r6=0;
  r7=0;
  
  fill(-3407719);
  triangle(176, 671, 376, 671, 276, 771);
  fill(-13408513);
  triangle(24, 575, 24,775, 124, 675);
  fill(-39424);
  triangle(338-40-3, 741+30-5, 438-40-3, 741+30-5, 388-40-3, 691+30-5);
  fill(-13382605);
  triangle(519+20+5, 718+50, 519+20+5, 618+50, 419+20+5, 718+50);
  fill(-6749953);
  triangle(417-30, 692, 467-30, 742, 467-30, 642);
  fill(-256);
  quad(200+340+2, 500+50+5,200+340+2, 100+500+50+5, 150+340+2, 150+500+50+5, 150+340+2, 50+500+50+5);
  fill(-65434);
  quad(50+50, 150+580, 100+50, 200+580, 150+50, 150+580, 100+50, 100+580);
}

void nivel(){
  switch (fig){
  case 1:
    rect(width/2-100,height/2-200,200,200);
   break;
  case 2:
    beginShape();
    vertex(0+75, 50+200);
    vertex(150+75, 50+200);
    vertex(200+75, 0+200);
    vertex(250+75, 50+200);
    vertex(400+75, 50+200);
    vertex(250+75, 200+200);
    vertex(150+75, 200+200);
    endShape(CLOSE);
    break;
  
  case 3:
    beginShape();
    vertex(0+200, 100+150);
    vertex(100+200, 0+150);
    vertex(200+200, 100+150);
    vertex(200+200, 200+150);
    vertex(100+200, 150+300);
    vertex(0+200,200+ 150);
    endShape(CLOSE);
    break;
  
  case 4:
    beginShape();
    vertex(0+125, 0+150);
    vertex(100+125, 0+150);
    vertex(150+125, 50+150);
    vertex(200+125, 0+150);
    vertex(300+125, 0+150);
    vertex(200+125, 100+150);
    vertex(250+125, 150+150);
    vertex(200+125,200+150);
    vertex(250+125, 250+150);
    vertex(50+125, 250+150);
    vertex(100+125, 200+150);
    vertex( 50+125,150 +150);
    vertex( 100+125,100+150);
    endShape(CLOSE);
    break;
  
  case 5:
    beginShape();
    vertex(0+100 , 150+250);
    vertex( 150+100,0+250 );
    vertex( 350+100, 0+250);
    vertex( 350+100, 100+250);
    vertex( 300+100,150+250 );
    endShape(CLOSE);
    break;
  
  case 6:
    beginShape();
    vertex(0 +75, 200+200);
    vertex( 200+75, 0+200);
    vertex( 400+75,200+200 );
    endShape(CLOSE);
    break;
  
  case 7:
    beginShape();
    vertex(0+75 , 50+200);
    vertex(100 +75, 50+200);
    vertex(150 +75, 100+200);
    vertex(300 +75, 100+200);
    vertex( 300+75, 0+200);
    vertex( 400+75, 0+200);
    vertex(350 +75, 50+200);
    vertex(400 +75, 100+200);
    vertex( 300+75, 200+200);
    vertex(350 +75, 250+200);
    vertex( 150+75, 250+200);
    vertex( 200+75, 200+200);
    vertex( 100+75, 100+200);
    vertex( 50+75, 100+200);
    endShape(CLOSE);
    break;
  
  
  
    
    
    

}
}