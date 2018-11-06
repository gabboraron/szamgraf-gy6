calss Camera {
  PVector eye = new PVector(0, 0, 15);   //pos of cam
  PVector up =  new PVector(0, 1, 0);    //the rotarion camera
  PVector at =  new PVector(0, 0, 0);    //hova néza kamera
  
  boolean is_move_forward = false, is_move_backward = false;
  boolean is_move_ =
  
  float last_time;
  Camera() {
    last_time = millis();
  }
  
  PVector GetForward() {
    PVector forward = at.copy().sub(eye);
    forward.normalize();
    
  
  // setterek
  void MoveForward(boolean on) {
    is_move_forward = on;
  }
  
  void MoveBackward(boolean on) {
    is_move_forward = on;
  }

}
