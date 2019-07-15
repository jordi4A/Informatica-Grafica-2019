#include "textures.inc"
#include "colors.inc"
#include "woods.inc"


/* Código para la camara */
camera {
  location <25, 10,-100>
  look_at <20, 20, 0>
  angle 65
}

background {
    color rgb<0.5,0.5,0.8>
}

// Foco de luz superior
light_source {
  <-400, 1000, -90> 
  rgb<1, 1, 1>
}

// Luz para el interior sin sobra
light_source {
    <40, 40, -40>, 0.5
    media_interaction off
    shadowless
}               
                     
/* Plano para el suelo */   
plane {
  <0,1,0>, 0
  texture {
      pigment {
        color DarkBrown
      }  
  }

}       
   
/* Definición de las paredes */

box {  // Pared lateral
  <0,0,-100>,<-1,55,0>
  texture {
      pigment {
        brick
        color DarkBrown
        color NewTan
        brick_size <1,4,5> 
        mortar 0.05 // size of the mortar  
      }
      normal { wrinkles 1 scale 0.01}
      finish { diffuse 0.9 phong 0.2} 
  }
}

box {  // Pared frontal
  <0,0,0>,<100,55,2>
  texture {
      T_Wood13
  }
}

box {  // Techo
 <0,50,-5>, <80, 55,-100>
 texture {
     T_Wood31
     pigment {
        color DarkTan
       transmit 0.15
       
     }
     finish {
        phong 0.5   
     }  
 }
}

/* Banco */
box {
  <0,0,-11>, <4,3,-10>      
  pigment {
    color DarkBrown
  }
}

box {
  <0,2.5,-20>, <4,4,-10>
  pigment {
    color DarkBrown
  }
}

box {
  <0,0,-20>, <4,3,-19>      
  pigment {
    color DarkBrown
  }
}
/* Palitos del techo (usando un bucle) */
#for(i, 8, 80, 9)
    box {
    <i,50,0>, <i+1,55,-5>
      pigment {
        color NewTan
      }
    }
#end

/* Piscina */
box {
    <25,0.1,-30>, <100,0,-100>
    texture {
      Polished_Chrome     
        pigment {
            color rgb <0.2,0.5,0.60>
            transmit 0.1
        }      
        finish {
            phong 0.9
            reflection 0.82
            diffuse 0.7
        }
    }
}

/* Escalera */
sphere_sweep {
    linear_spline
    4,
    <35,-1,-28>, 0.15
    <35, 4,-30>, 0.15
    <35, 4, -33>, 0.15
    <35, -1, -35>, 0.15    
    pigment {
        color LightSteelBlue
    }    
    texture {
        Polished_Chrome
    }
}
sphere_sweep {
    linear_spline
    4,
    <38,-1,-28>, 0.15
    <38, 4,-30>, 0.15
    <38, 4, -33>, 0.15
    <38, -1, -35>, 0.15    
    pigment {
        color LightSteelBlue
    }    
    texture {
        Polished_Chrome
    }
}


/* Dibujar rayas del suelo */        
#for(i, -100, 0, 2)
    box {
    <0,0.01,i>, <25,0.01,i+1.5>
      pigment {
        color VeryDarkBrown
      }
    }
#end

#for(i, -30, 0, 2)
    box {
    <0,0.01,i>, <100,0.01,i+1.5>
      pigment {
        color VeryDarkBrown
      }
    }
#end  

/* Otros detalles */
box {
<24.95,0.01,-100>, <25,0.01,0>
  pigment {
    color Black
  }
}
box {
<25,0.2,-100>, <25.05,0.2,-30>
  pigment {
    color White
  }
}
box {
<25,0.4,-30>, <100,0.1,-30.1>
  pigment {
    color Brown
  }
}
// Rayas del techo 
#for(i, -100, -5, 10)
    box {
    <0,49.99,i>, <100,50,i+0.3>
      pigment {
        color DarkBrown
      }
    }
#end

#for(i, 0, 100, 20)
    box {
    <i,49.99,-5>, <i+0.3,50,-100>
      pigment {
        color DarkBrown
      }
    }
#end   

// Hendidura de la pared frontal
box {
    <30,42,0> <100,43,-0.01>
    pigment {
        color IndianRed
    }
}
// Rayas pared frontal
#for(i, 0, 60, 5)
    box {
    <0,i,-0.01>, <100,i+0.2,-0.01>
      pigment {
        color DarkBrown
      }
    }
#end 

// Rayas pared frontal
#for(i, 0, 100, 20)
    box {
    <i,0,-0.01>, <i+0.1,60,-0.01>
      pigment {
        color DarkBrown
      }
    }
#end            

// Palo
cylinder {
    <50,0,-25>, <50,10,-25>, 0.15
    texture {
        Polished_Chrome
    }
}

/* Marcas subacuáticas */
#for(i, -100, -35, 8)
    box {
    <35,0.1,i>, <100,0.1,i+1>
      pigment {
        color HuntersGreen
      }
    }
#end

#for(i, -100, -35, 8)
    box {
    <34,0.1,i-2.5>, <35,0.1,i+2.5>
      pigment {
        color HuntersGreen
      }
    }
#end