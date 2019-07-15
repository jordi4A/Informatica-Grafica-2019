#include "realskies.inc"
                                    

/* Código para el efecto del cielo */
sky_sphere {
  pigment {
    gradient y
    color_map {
      [0 color <0.1, 0.1, 0.9>]
      [1 color <0.5, 0.5, 0.5>]
    }
    scale 2
    translate -1
  }
  pigment {
    bozo
    turbulence 0.65
    octaves 6
    omega 0.6
    lambda 3
    color_map {
      [
        0.0 
        0.1 
        color rgb <0.85, 0.85, 0.85>
        color rgb <0.75, 0.75, 0.75>
      ][
        0.1 
        0.5 
        color rgb <0.75, 0.75, 0.75>
        color rgbt <1, 1, 1, 1>
      ][
        0.5 
        1.0 
        color rgbt <1, 1, 1, 1>
        color rgbt <1, 1, 1, 1>
      ]
    }
    scale <0.2, 0.5, 0.2>
  }
  rotate -135*x
}


/* Código para la camara */
camera {
  location <0, 8, -40>
  look_at <0, 8, 0>
  angle 65
}

/* Foco de luz */
light_source {
  <500, 10000, -10000>, rgb<1, 1, 1>
}                       

/* Plano para el efecto del suelo */         
plane {
  <0,1,0>, 0
  pigment {
    color rgb<0, 0, 0>
  }
  finish {
    reflection 0.1
    phong 0.9
  }
}      
  
/* Declaración del código para el fractal de cuadrados */
#macro cuadros(K, Level, texture1, texture2)
  union {
    object {
      box {
        //<-15,0,-8>,
        //<15,5,22>
        <-4,0,-4>,
        <4,8,4>
      }
      texture { 
        texture1 
      } 
    }                                                                                                   
    #if (Level > 0)
      object { cuadros(K, Level-1, texture2, texture1) scale K translate  x*10 }                                                             
      object { cuadros(K, Level-1, texture2, texture1) scale K translate -x*10 }
      object { cuadros(K, Level-1, texture2, texture1) scale K translate  y*10 }
      //object { cuadros(K, Level-1, texture2, texture1) scale K translate -y*10 } // Realmente sobra porque aunque los generemos están por debajo del plano
      object { cuadros(K, Level-1, texture2, texture1) scale K translate  z*10 }
      object { cuadros(K, Level-1, texture2, texture1) scale K translate -z*10 }
    #else
      object{box {<0,0,0>, <0,0,0>} pigment {color rgb <0,0,0>}}
    #end
  }
#end

/* Textura para los cuadros */
#declare Textura1 = texture {
  pigment {  
    color rgb<0.9,0.2,0.2> 
    transmit 0.2   
  }                 
  finish { 
    phong 1
  }  
}

/* Textura para los cuadros */
#declare Textura2 = texture {
  pigment { 
    color rgb<0.2,0.8,0.2> 
    transmit 0.2   
  }                 
  finish { 
    phong 1
  }  
}
        
/* Llamada a la macro */
cuadros(0.5, 4, Textura1, Textura2)
