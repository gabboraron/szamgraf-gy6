PVector eye = new PVector(0, 0, 15);  //pos of cam
PVector up =  new PVector(0, 1, 0);    //the rotarion camera
PVector at =  new PVector(0, 0, 0);    //hova néza kamera


void setup() {
  size(800, 600, P3D);
  perspective(PI/3, (float) width/ (float) height, 0.01, 1000);//vertikális látószöge a kamerának,; felbontása az ablaknak 
  camera(eye.x, eye.y, eye.z,
         at.x, at.y, at.z,
         up.x, up.y, up.z);
}


void draw(){
 background(127); 
 pushMatrix();
   /*
   //translate(0, 0, 100);
   //rotateX();
   rotateY(millis()/1000.0f);  //ez hat másodjára
   //rotateZ();
   pyramid();
   rotateY(PI);  //millis/1000 + pi  //ez hat először
   //translate(0, 0, 100);
   fill(255, 0, 0);
   pyramid();
   */
   
   //rotateY(millis()/1000.0f);
   rotateY(-30);
   translate(2, 0, 0);
   drawAPyramid();
   //rotateY(millis()/1000.0f);
   translate(0, 0, -2);
   //translate(-2, 0, 0);
   //rotateY(90);
   drawAPyramid();
 popMatrix();
}


void drawAPyramid() {
  pushMatrix();
    rotateZ(millis()/1000.0);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
}

void pyramid() {
  beginShape(TRIANGLES);
  
    /*vertex(0, 0, -100);
    vertex(400, 0, -100);
    vertex(0, 400, -100);
    */
    vertex(-1, 1, 0);
    vertex(-1, -1, 0);
    vertex(0, 0, 1);  //csucsa
    
    vertex(-1, 1, 0);
    vertex(1, 1, 0);
    vertex(0, 0, 1);  //csucsa
    
    vertex(1, 1, 0);
    vertex(1, -1, 0);
    vertex(0, 0, 1);  //csucsa
    
    
    vertex(-1, -1, 0);
    vertex(1, -1, 0);
    vertex(0, 0, 1);  //csucsa
    
    //talp
    vertex(-1, 1, 0);
    vertex(1, -1, 0);
    vertex(-1, -1, 0);
    
    vertex(-1, 1, 0);
    vertex(1, -1, 0);
    vertex(1, 1, 0);
    
    
    
    /* negyszog */
    /*
    vertex(400, 400, -100);
    vertex(400, 400, -100);
    vertex(400, 0, -100);
  */
  endShape();
}
