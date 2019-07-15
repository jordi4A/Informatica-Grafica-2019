#include "shapes.inc"
#include "shapes3.inc"


global_settings {
    radiosity {
        brightness 1
    }
}


camera {
    orthographic angle 50
    location <1, 1, -1> * 25
    look_at <0,0,0>
    right x * image_width/image_height
    //translate <0, 1, 0>
}                                  

background {
    color rgb<145,98,106> / 255 // Convertir RGB a formato Pov-Ray
}
   /*
light_source {
    <0, 1000, -1000> 
    rgb<1, 1, 1>
}  */

// Luz ambiente general
light_source {
    <200,200,-200>, 0.8
    media_interaction off
    shadowless
}

// Luz de lampara
light_source {
    <3,10,-11>//, 0.1
    color rgb<254,245,204> / 255    
} 
 

// Suelo
box {
    <1,0,-1> <24,1,-24>
    
    pigment {
        color rgb<68,63,93> / 255
    }
}

// Pared izquierda
box {
    <0,0,0> <1,24,-24>
    
    pigment {
        color rgb<162,66,72> / 255
    }
}

// Pared derecha
box {
    <0,0,0> <24,24,-1>
    
    pigment {
        color rgb<162,66,72> / 255
    }
}

/* Armario */
box {   // Cuerpo        
    <15.5,1,-1.2> <23.5,12,-5>
    pigment {
        color rgb<150,93,86> / 255
    }
}

box {   // Puerta izquierda
    <15.6,1.5,-5> <19.5,11.9,-5.1>
    pigment {
        color rgb<113,62,61> / 255
    }
}

box {   // Puerta derecha
    <19.7,1.5,-5> <23.4,11.9,-5.1>
    pigment {
        color rgb<113,62,61> / 255
    }
}

sphere {    // Pomo izquierdo
    <18.6,6.5,-5.2>, 0.3
    pigment {
        color rgb<107,60,68> / 255
    }
}

sphere {    // Pomo izquierdo
    <20.2,6.5,-5.2>, 0.3
    pigment {
        color rgb<107,60,68> / 255
    }
}

/* Cama */
object {    // Somier
    // Round_Box(A, B, WireRadius, Merge)
    Round_Box(<1.2,1,-1.2>, <11.2,3,-7.2>, 0.125, 0)
    pigment {
        color rgb<120,57,48> / 255
    }    
}

object {    // Cabecero
    // Round_Box(A, B, WireRadius, Merge)
    Round_Box(<1.2,1,-1.2>, <1.7,5,-7.2>, 0.125, 0)
    pigment {
        color rgb<120,57,48> / 255
    }    
}     
                                     
object {    // Sabana
    // Round_Box(A, B, WireRadius, Merge)
    Round_Box(<1.8,3,-1.3>, <11,3.2,-7.1>, 0.125, 0)
    pigment {
        tiling 6
        color_map {
            [0.0 color rgb<255,75,25> / 255]
            [1.0 color rgb<220,32,25> / 255]
        }
        scale 0.05
        
    }    
}

object {    // Almohada
    // Round_Box(A, B, WireRadius, Merge)
    Round_Box(<-1,0,1.5>, <1,0.3,-1.5>, 0.25, 0)
    pigment {
         color rgb<200,49,32> / 255
    }
    rotate <0,-10,0>
    translate <3.6,3.2,-4>    
}
 

/* Estante derecho */
difference {    // Cuerpo
    box {<7,12,-1.1> <14,16,-3>}
    box {<7.3,12.3,-1.4> <13.7,15.7,-3.1>}
    pigment {
        color rgb<131,73,61> / 255
    }
}
box {   // balda interior
    <7,13.7,-1.1> <14,14.3,-3>
    pigment {
        color rgb<131,73,61> / 255
    }    
}

/* Estante izquierdo */ 
difference {    // Cuerpo
    box {<1.1,11,-3> <3,15,-10>}
    box {<1.4,11.3,-3.3> <3.1,14.7,-9.7>}
    pigment {
        color rgb<131,73,61> / 255
    }
}

box {   // balda interior
    <1.1,12.7,-3> <3,13.3,-10>
    pigment {
        color rgb<131,73,61> / 255
    }    
}            

/* Escritorio */ 
difference {    // Cuerpo cajonera
    box {<1.1,1,-9.5> <5,6,-14>}
    box {<1.4,0.9,-9.8> <5.7,6.1,-14.1>}
    pigment {
        color rgb<71,42,34> / 255
    }
}

box {   // Balda suelo
    <1.4,1,-9.5> <5,1.5,-13>
    pigment {
        color rgb<71,42,34> / 255
    }
}

box {
    <1.4,3,-9.5> <5,3.5,-13>
    pigment {
        color rgb<71,42,34> / 255
    }
}

box {   // Balda superior
    <1.4,5.6,-9.5> <5,6,-13>
    pigment {
        color rgb<71,42,34> / 255
    }
}

box {   // Tablero
    <1,6,-9.5> <5,6.3,-19.9>
    pigment {
        color rgb<71,42,34> / 255
    }
}

box {   // Pata izquierda
    <1.1,1,-19.5> <5,6,-19.9>
    pigment {
        color rgb<71,42,34> / 255
    }
}

/* Lámpara */
sor {   // Pie
    6,
    <0.0,  0.0>,
    <0.6,  0.0>,
    <0.6,  0.1>,
    <0.15, 0.15>,
    <0.15, 1.2>,
    <0.0,  1.2>
    pigment {
        color rgb<176,106,72> / 255
    }                   
    translate <3,6.3,-11>
}

sor {   // pantalla (de lámpara)
    4,
    <0.76,0.21>,
    <0.75, 0.2>,
    <0.4, 1.6>,
    <0.41,1.61>
    pigment {
        color rgb<253,246,204> / 255
        filter 0.1
        transmit 0.1
    }
    translate <3,7.5,-11>
}


/* Marco */
box {
    <1.1,8.5,-14> <1.3,12.5,-19.5>
    pigment {
        color rgb<220,144,84> / 255
    }
}
box {
    <1.1,8.7,-14.2> <1.31,12.3,-19.3>
    pigment {
        color rgb<212,109,74> / 255    
    }
}

/* Papelera */
difference {
    object {
        Pyramid_N(4,0.8,1.1,2.5)  // (Lados, Radio1, Radio2, Altura)     
    }
    object {
        Pyramid_N(4,0.7,1,3.1)  // (Lados, Radio1, Radio2, Altura)     
    }    
    
    pigment {
        color rgb<39,65,66> / 255
    }
    scale <0,0,0.7>     // Aplanar un poco la papelera
    rotate <0,-55,0>
    translate <3,2,-22.5>
}

/* Otros */
box {   // Caja cartón
    <-1.2,0,-0.8> <1.2,1.2,0.8>
    pigment {
        color rgb<182,147,115> / 255
    }
    rotate <0,25,0>
    translate <18.5,12.3,-3.5>
    //<15.5,1,-1.2> <23.5,12,-5>
}
box {   // Rallita de la caja
    <-0.2,0,-0.8> <0.2,0.2,0.82>
    pigment {
        color rgb<1,1,1>
    }
    rotate <0,25,0>
    translate <18.5,13.31,-3.52>    
}                            

box {   // Folios de debajo
    <-1.2,0,-0.8> <1.2,0.8,0.8>
    pigment {
        color rgb<1,1,1>
    }
    rotate <0,-20,0>
    translate <21.8,13,-3.8>
}
box {   // Folios de arriba
    <-1.3,0,-0.9> <1.3,0.5,0.9>
    pigment {
        color rgb<1,1,1>
    }
    rotate <0,-20,0>
    translate <21.8,13.8,-3.8>
}

box {
    <-0.4,0,-0.5> <0.4,0.01,0.5>
    pigment {
        color rgb<1,1,1>
    }
    rotate <0,35,0>
    translate <4,6.3,-13>
    // <1,6,-9.5> <5,6.3,-19.9>
}

cylinder {  // Lápiz
    <-0.6,0,0> <0.6,0,0>, 0.05
    pigment {
        color rgb<117,120,55> / 255
    }
    rotate <0,-50,0>
    translate <4.3,6.3,-12.5>    
}

box {   // Alfombra
    <-4.5,0,-3><4.5,0.2,3>
    pigment {
        tiling 14
        color_map {
            [0.5 rgb<191,43,55> / 255]
            [0.4 rgb<181,44,54> / 255]
            [0.3 rgb<185,40,53> / 255]
        }
        scale 0.8 
    }
    rotate <0,-45,0>
    translate <16,1,-16>
    
    //<1.8,3,-1.3>, <11,3.2,-7.1>
}

/* Libros */
    /* Estante derecho debajo */
box {   // Libro naranja
    <7.6,12.3,-1.3> <9,12.6,-2.9>
    pigment {
        color rgb<216,96,61> / 255
    }
}
box {   // Libro rosa
    <7.6,12.62,-1.3> <9,12.92,-2.9>
    pigment {
        color rgb<213,78,82> / 255
    }
}
    /* Estante derecho arriba (de izquierda a derecha) */
box {   // Libro 1
    <7.35,14.32,-1.4> <7.62,15.5,-3>
    pigment {
        color rgb<215,176,49> / 255
    }
    
}
box {   // Libro 2
    <7.64,14.32,-1.4> <7.94,15.6,-3>
    pigment {
        color rgb<215,150,50> / 255
    }
    
}
box {   // Libro 3
    <7.96,14.32,-1.4> <8.24,15.5,-3>
    pigment {
        color rgb<216,128,56> / 255
    }
    
}
box {   // Libro 4
    <8.27,14.32,-1.4> <8.57,15.5,-3>
    pigment {
        color rgb<218,153,49> / 255
    }
    
}
box {   // Libro 5
    <8.59,14.32,-1.4> <8.89,15.5,-3>
    pigment {
        color rgb<218,125,55> / 255
    }
    
}
box {   // Libro 6
    <8.92,14.32,-1.4> <9.22,15.45,-3>
    pigment {
        color rgb<219,185,52> / 255
    }
    
}

box {   // Libro 7
    <-0.15,0,-0.8><0.15,1.2,0.2>
    pigment {
        color rgb<216,129,62> / 255
    }
    rotate <0,0,15>
    translate <9.8,14.4,-2.25>
    
}

    /* Estante izquierdo debajo (de abajo hacia arriba) */
box {   // Libro 1
    <2,11.4,-5.8> <3,11.6,-7.2>
    pigment {
        color rgb<203,85,57> / 255
    }
}
box {   // Libro 2
    <2,11.62,-5.8> <3,11.82,-7.2>
    pigment {
        color rgb<214,116,51> / 255
    }
}
box {   // Libro 3
    <2,11.84,-5.8> <3,12.14,-7.2>
    pigment {
        color rgb<212,142,44> / 255
    }
}
box {   // Libro 4
    <2,12.14,-5.8> <3,12.34,-7.2>
    pigment {
        color rgb<207,113,52> / 255
    }
}
    /* Estante derecho arriba (izquierda a derecha) */
box {
    <-0.5,0,0.7> <0.5,0.1,-0.7>
    pigment {
        color rgb<120,60,29> / 255
    }
    rotate <0,20,0>
    translate <2.2,13.3,-7.5>
}
box {
    <-0.5,0,-0.1> <0.5,1.4,0.1>
    pigment {
       color rgb<199,75,75> / 255
    }
    rotate <15,0,0>
    translate <2.3,13.1,-5.45>
}
box {
    <-0.5,0,-0.1> <0.5,1.4,0.1>
    pigment {
        color rgb<202,84,56> / 255
    }
    rotate <15,0,0>
    translate <2.3,13.1,-5.1>
}
box {
    <-0.5,0,-0.1> <0.5,1.4,0.1>
    pigment {
        color rgb<199,75,75> / 255
    }
    rotate <15,0,0>
    translate <2.3,13.1,-4.8>
}
box {
    <-0.5,0,-0.1> <0.5,1.4,0.1>
    pigment {
        color rgb<202,84,56> / 255
    }
    rotate <-10,0,0>
    translate <2.3,13.1,-4>
}

/* Portátil */
box {   // base
    <2,6.3,-15.2> <4.5,6.32,-18.3>
    pigment {
        color rgb<74,58,58> / 255
    }
}
box {   // teclado
    <2.3,6.33,-15.6> <3.2,6.33,-17.9>
    pigment {
        color rgb<44,33,31> / 255
    }
}
box {   // trackpad
    <3.45,6.33,-16.3> <4.3,6.33,-17.3>
    pigment {
        color rgb<44,33,31> / 255
    }
}
box {   // pantalla
    <0,0,0> <0.1,2,-3.1>
    pigment {
        color rgb<74,58,58> / 255
    }
    rotate <0,0,15>
    translate <2,6.3,-15.2>
}
box {   // lcd
    <0,0,0> <0.1,1.8,-2.8>
    pigment {
        color rgb<137,151,206> / 255
        transmit 0.2
    }
    finish {
        phong 0.8
        reflection { 0.1 }
    }
    rotate <0,0,15>
    translate <2.01,6.31,-15.4>
}
box {   // program
    <0,0,0> <0.1,1.6,-0.8>
    pigment {
        color rgb<1,1,1>
        transmit 0.2
    }
    finish {
        phong 0.8
        reflection { 0.1 }
    }
    rotate <0,0,15>
    translate <2.01,6.4,-16.8>
}                          
                          
/* Notas */
box {   // Esquina superior derecha
    <1.32,11,-14.8> <1.32,12,-15.6>
    pigment {
        color rgb<1,1,1>
    }    
}
box {   // Nota inferior
    <1.32,9.5,-16.2> <1.32,10.5,-17.1>
    pigment {
        color rgb<1,1,1>
    }    
}
box {   // Nota torcida
    <0,0,0><0.01,1,-0.8>
    pigment {
        color rgb<1,1,1>
    }
    rotate <25,0,0>
    translate <1.32,10.8,-17.5> 
}

/* Silla */
box {
    <6.6,1,-18.5> <7,4,-18.1>
    pigment {
        color rgb<71,42,34> / 255
    }    
}
box {
    <3.8,1,-18.5> <4.2,4,-18.1>
    pigment {
        color rgb<71,42,34> / 255
    }    
}
box {
    <6.6,1,-15> <7,4,-15.4>
    pigment {
        color rgb<71,42,34> / 255
    }    
}
box {   // Asiento
    <3.8,4,-18.5><7,4.3,-15>
    pigment {
        color rgb<71,42,34> / 255
    } 
}
box {
    <0,0,0> <0.3,2.5,-3.5>
    pigment {
        color rgb<71,42,34> / 255
    }
    rotate <0,0,-15>
    translate <6.7,4.1,-15>
}
box {
    <7.3,6.2,-15> <7.7,9,-18.5>
    pigment {
        color rgb<71,42,34> / 255
    }
}

/* Monopatin */
union {
    cylinder {<13,1.95,-5.2>, <13.1,1.95,-5.2>, 0.85}
    box { <13,1.1,-1.5> <13.1,2.8,-5> }
    pigment {
        color rgb<51,32,26> / 255
    }
}

cylinder {  // Rueda
    <12.8,2.6,-4.9>, <12.8,2.8,-4.9>, 0.2
    pigment {
        color rgb<1,1,1>
    }
}
cylinder {  // Rueda
    <12.8,2.6,-4.9>, <12.8,2.81,-4.9>, 0.05
    pigment {
        color rgb<0,0,0>
    }
}

/* Zapatillas */

    /* Zapatilla derecha */
prism {   // suela
    linear_sweep
    linear_spline
    0, // sweep the following shape from here ...
    0.1, // ... up through here
    8, // the number of points making up the shape ...
    <-0.6,0.4>,
    <-0.8,0.2>,
    <-0.8,-0.2>,
    <-0.6,-0.4>,
    <0.65,-0.35>,
    <0.8,-0.15>,
    <0.8,0.15>,
    <0.65,0.35>
    pigment {
        color rgb<1,1,1>
    }
    translate <21.5,1,-8>
}
union {     // cuerpo
    prism {   
        linear_sweep
        linear_spline
        0, // sweep the following shape from here ...
        0.1, // ... up through here
        8, // the number of points making up the shape ...
        <-0.6,0.4>,
        <-0.8,0.2>,
        <-0.8,-0.2>,
        <-0.6,-0.4>,
        <0.65,-0.35>,
        <0.8,-0.15>,
        <0.8,0.15>,
        <0.65,0.35>
    }
        prism {
        linear_sweep
        linear_spline
        0.1, // sweep the following shape from here ...
        0.2, // ... up through here
        8, // the number of points making up the shape ...
        <-0.5,0.3>,
        <-0.7,0.1>,
        <-0.7,-0.1>,
        <-0.5,-0.3>,
        <0.6,-0.3>,
        <0.7,-0.1>,
        <0.7,0.1>,
        <0.6,0.3>
    }
     prism {
        linear_sweep
        linear_spline
        0.2, // sweep the following shape from here ...
        0.4, // ... up through here
        8, // the number of points making up the shape ...
        <0,0.1>,
        <0,-0.1>,
        <0.1,-0.3>,
        <0.5,-0.3>,
        <0.6,-0.2>,
        <0.6,0.2>,
        <0.5,0.3>,
        <0.1,0.3>
    }

    pigment {
        color rgb<0.1,0.1,0.1>
    }
    translate <21.5,1.1,-8>
}

    /* Zapatilla izquierda */
prism {   // suela
    linear_sweep
    linear_spline
    0, // sweep the following shape from here ...
    0.1, // ... up through here
    8, // the number of points making up the shape ...
    <-0.6,0.4>,
    <-0.8,0.2>,
    <-0.8,-0.2>,
    <-0.6,-0.4>,
    <0.65,-0.35>,
    <0.8,-0.15>,
    <0.8,0.15>,
    <0.65,0.35>
    pigment {
        color rgb<1,1,1>
    }
    rotate <0,-20,0>
    translate <21.5,1,-9.5>
}

union {     // cuerpo
    prism {   
        linear_sweep
        linear_spline
        0, // sweep the following shape from here ...
        0.1, // ... up through here
        8, // the number of points making up the shape ...
        <-0.6,0.4>,
        <-0.8,0.2>,
        <-0.8,-0.2>,
        <-0.6,-0.4>,
        <0.65,-0.35>,
        <0.8,-0.15>,
        <0.8,0.15>,
        <0.65,0.35>
    }
        prism {
        linear_sweep
        linear_spline
        0.1, // sweep the following shape from here ...
        0.2, // ... up through here
        8, // the number of points making up the shape ...
        <-0.5,0.3>,
        <-0.7,0.1>,
        <-0.7,-0.1>,
        <-0.5,-0.3>,
        <0.6,-0.3>,
        <0.7,-0.1>,
        <0.7,0.1>,
        <0.6,0.3>
    }
     prism {
        linear_sweep
        linear_spline
        0.2, // sweep the following shape from here ...
        0.4, // ... up through here
        8, // the number of points making up the shape ...
        <0,0.1>,
        <0,-0.1>,
        <0.1,-0.3>,
        <0.5,-0.3>,
        <0.6,-0.2>,
        <0.6,0.2>,
        <0.5,0.3>,
        <0.1,0.3>
    }

    pigment {
        color rgb<0.1,0.1,0.1>
    }
    rotate <0,-20,0>
    translate <21.5,1.1,-9.5>
}

/* Mochila */
union{
    prism {
        0,
        0.8,
        6,
        <1.25,1>,
        <0.75,1.5>,
        <-0.75,1.5>,
        <-1.25,1>,
        <-1.25,-2>,
        <1.25,-2>
        pigment {
            color rgb<56,38,38> / 255
        }
        
    }
    object {    // bolsillo
        // Round_Box(A, B, WireRadius, Merge)
        Round_Box(<-1,0.8,-1.8>, <1,1,0.2>, 0.25, 0)
        pigment {
             color rgb<71,52,46> / 255
        }   
    }   
    sphere_sweep {  // asa
        linear_spline
        4,
        <-0.2,0.1,1.5>, 0.05
        <-0.1,0.1,1.9>, 0.05
        <0.1,0.1,1.9>, 0.05
        <0.2,0.1,1.5>, 0.05
        pigment {
            color rgb<56,38,38> / 255
        }    
    }
    rotate <-75,0,0>
    translate <9.2,2.8,-7.2>
}