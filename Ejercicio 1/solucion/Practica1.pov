#include "shapes.inc"
#include "pencil.inc"

background {color rgb<0.5,0.5,0.8>}

camera {
  location <-10, 2, -25>
  look_at <-1, 8, 20>
  angle 45
}


light_source {
  <0, 100, -100>, rgb<1, 1, 1>
}

plane {
  <0,1,0>, 0
  pigment {
    color rgb<0,0, 0>
  }
  finish {
    reflection 0.3
    phong 0.6
  }
}

sor {
  15,
  <0.0, 0.0>,
  <1, 0.0>,
  <2, 1>,
  <2.3, 1.5>,
  <2.5, 2>,
  <2.6, 2.4>,
  <2.55, 3.3>,
  <2.5, 3.4>,
  <2, 4>,
  <0.8, 5.4>,
  <0.6, 6.5>,
  <0.6, 7>,
  <0.55, 8>,
  <0.5, 9>,
  <0.4, 9.5>
  open
  texture {
    pigment {
      color rgb<0.9, 0, 0>
      transmit 0.2
    }
  }
  finish {
    phong 0.9   
  }
}

object {
 // Round_Box(A, B, WireRadius, Merge)
 Round_Box(<0,0,0>,<7,1.2,4>, 0.3, 0)
 texture {
   pigment { color rgb<1,1,1> 
   transmit 0.9   
 }
   finish { phong 1}
 } // end of texture
 scale<1,1,1>
 rotate<0,-25,0>
 translate<-10, 0, -6>
}

sphere {
  <-10,0.5,-5>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0, 0, 0.2>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-9,0.5,-4.5>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0, 0, 0>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-8,0.5,-4>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<1, 0.7, 0.7>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}
      
sphere {
  <-10.5,0.5,-4>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0, 0, 0.2>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-9.5,0.5,-4>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0.3, 0.2, 0>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-8.5,0.5,-3.5>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0, 0, 0.2>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-10.8,0.5,-3>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0.3, 0.2, 0>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-10,0.5,-3>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0.2, 0.1, 0>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-8.5,0.5,-2.5>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0.4, 0.3, 0>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }
}

sphere {
  <-9,0.5,-2>, 0.5
  scale<1, 0.6>
    texture {
    pigment {
      color rgb<0.2, 0.1, 0>
      transmit 0.1
    }
  }
  finish {
    reflection 0.2
    phong 0.5
  }        
}

sor {
  11,
  <0, 0>,
  <0.9, 0.1>,
  <1.3, 0.2>,
  <1.6, 0.5>,
  <1.6, 1.4>,
  <1.4, 2>,
  <1.4, 2.1>,
  <1.4, 2.2>,
  <1.4, 2.3>,
  <1.4, 2.4>,
  <0, 2.5>
  open
  texture {
   pigment { 
     color rgb<1,1,1> 
     transmit 0.6  
   }
   finish {
     phong 0.8
   }
  }
  translate<-8, 1.2, -6>
}

// Lápiz
object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <40, 50, 90>
  scale<0.05,0.03,0.05>
  translate<-8, 4, -6>        
}
         
object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <180, 10, 120>
  scale<0.05,0.03,0.05>
  translate<-9, 3.5, -6>        
}
 
object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <180, 30, 110>
  scale<0.05,0.03,0.05>
  translate<-9, 3.5, -6>        
}

object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <30, -20, 60>
  scale<0.05,0.03,0.05>
  translate<-7, 3.5, -5.5>        
}

object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <30, -20, 90>
  scale<0.05,0.03,0.05>
  translate<-7.5, 4, -5.5>        
}

object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <30, -10, 75>
  scale<0.05,0.03,0.05>
  translate<-7, 4, -5.5>        
}

object
{
  black_pencil
  pigment { 
    color rgb<0,0,0>  
  }
  rotate <-120, -15, 125>
  scale<0.05,0.03,0.05>
  translate<-9, 3.5, -5.5>        
}             