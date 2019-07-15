# Informática Gráfica (UC3M)

Repositorio con los trabajos realizados para la asignatura de informática gráfica de la rama de Computación del Grado en Ingeniería Informática (UC3M). La finalidad del repositorio es tenerlo todo agrupado y de paso que sirva para que los que no la hayan cursado se hagan una idea de cómo son las prácticas.

Entiendo que no hay problema en que suba el contenido de otro año porque cada año cambian las prácticas para evitar precisamente que se copie (supongo).

# Resumen de ejercicios y notas obtenidas

Todos los ejercicios consisten en reflejar a partir de una imagen una escena o paisaje. Excepto el ejercicio de fractales que es de libre invención. Todos son individuales, incluyendo la práctica final.

Las notas reflejadas aquí con el desglose, son las que nos proporcionó el profesor en cada práctica  y su **nota es sobre 3**. Obviamente son las notas que obtuve personalmente con los trabajos que incluiré en este mismo repositorio y como veréis no son muy buenas (hay que esforzarse más :P).

Todos los ejercicios se realizan mediante el programa [Pov-Ray](http://www.povray.org/) excepto uno (*ejercicio 3*) que es con [Terragen](https://planetside.co.uk/), en el cuál eliges un paisaje que te guste de montañas, el mar, etc...

La práctica final es de libre elección pero no te recomienda que la hagas con Terragen porque es demasiado simple, además tienes que hablar con el profesor antes de empezarla para que te de su visto bueno.

## Ejercicio 1: fotografía de una mesa

![Comparativa ejercicio 1](/img/comp1.png)

| Posición | Tamaño | Forma | Total   |
|----------|--------|-------|---------|
|    1,5   |   1,5  |  1,5  | **1,5** |

## Ejercicio 2: Fractal

![Comparativa ejercicio 2](/img/comp2.png)

| Texturas | Iluminación | Complejidad | Composición |  Total  |
|----------|-------------|-------------|-------------|---------|
|     2    |     1,5     |     1,5     |     1,5     | **1,6** |

## Ejercicio 3: Paisaje

![Comparativa ejercicio 3](/img/comp3.png)

| Texturas | Iluminación | Complejidad | Composición |  Total  |
|----------|-------------|-------------|-------------|---------|
|     1    |      1      |      1      |      2      | **1,3** |

## Ejercicio 4: fotografía de piscina cubierta

![Comparativa ejercicio 4](/img/comp4.png)

| Forma | Pigmentos | Texturas | Iluminación |  Total  |
|-------|-----------|----------|-------------|---------|
|   2   |    1,5    |     2    |     1,5     | **1,8** |

## Práctica final: libre elección

Escogí una vista isométrica porque me gustaba la perspectiva.
![Comparativa ejercicio 5](/img/comp5.png)

| Texturas | Iluminación | Composición |  Total  |
|----------|-------------|-------------|---------|
|    2,5   |     2,5     |      3      | **2,7** |


### Forma de puntuar

Cada ejercicio se puntúa sobre 3. El peso porcentual de cada ejercicio es:
* Ejercicio 1: 20%
* Ejercicio 2. Fractales: 15%
* Ejercicio 3. Paisaje: 15%
* Ejercicio 4: 20%
* Ejercicio Final: 30%

En el examen final hay que sacar una puntuación superior al 3.
La nota final se calcula: 
* Ordinaria: **0,7·Ejercicios + 0,3·Examen**
* Extraordinaria: **máximo(0,7·Ejercicios + 0,3·Examen, Examen)**


# Exámenes

Estos son los dos exámenes que cayeron en las dos convocatorias de 2019 (ordinaria y
extraordinaria respectivamente). Los enunciados no son exactos, los he escrito al salir
de los exámenes para no olvidarme de ellos, aunque he intentado que sean lo más exactos
posible a los originales.

Cada enunciado tenía una validez de dos puntos por igual en ambos exámenes.

Espero que a alguien le sirva de guía ya que yo y mis compañeros fuimos a ciegas sin
saber cómo era el examen y los resultados fueron nefastos. Ahora que he comprendido cómo
es el examen os dejo unas pequeñas indicaciones de como estudiar para aprobar el examen
de forma fácil (por temas): 
* ~~Tema 1: Ni te molestes en estudiarlo.~~
* ~~Tema 2 es bastante improbable que caiga, tiene poca cosa y es sencilla.~~
* Tema 3: Pon especial atención a los modelos RGB, HSV y CIE, cómo se representan 
gráficamente y ventajas/desventajas de cada uno.
* Tema 4: poca probabilidad de que caiga algo de aquí.
* Tema 5: Básicamente saber el por qué se usan coordenadas homogéneas y calcular cuando
son conmutables dos matrices de transformación (AB=BA). Con eso es suficiente.
* Tema 6: seguramente lo único que preguntará es acerca de modelado de superficie. Lo más
probable es que caiga algún tipo de spline.
* Tema 7: tipos de fractales, características y aplicaciones que tienen.
* Tema 8: este tema es de los más importantes, siempre cae algo. Lo más probable es que
entre uno de los tres tipos de sombreado y que te pida ventajas/desventajas. También
puede entrar algo de iluminación.
* Tema 9: otro de los temas más importantes. Este tema solo tiene dos cosas: radiosidad y
trazado de rayos, tienes que saberte los dos, siempre cae algo de esto.
* ~~Tema 10: no entra, lo dijo el profesor.~~
* ~~Tema 11: no entra, lo dijo el profesor.~~
* ~~Tema 12: no entra, lo dijo el profesor.~~
* Otros: no aprendas fórmulas matemáticas ni algoritmos, no va a preguntar nada de eso.

## Mayo de 2019

1. Definición de radiosidad. Ventajas y desventajas respecto al trazado de rayos.

2. Definir sombreado de Gouraud. Ventajas y desventajas.

3. Te daba dos matrices, una de rotación y otra de reflexión. Preguntaba que cuando eran
conmutables las dos operaciones. Las matrices eran así:
``` 
                      Rotación:                      Reflexión:
                    | cos(θ)  -sen(θ)    0 |        | -1  0  0 |
                    | sen(θ)   cos(θ)    0 |        |  0 -1  0 |
                    |  -1        0       1 |        |  0  0  1 |
```
4. ¿Qué es un spline lineal? Aplicaciones.

5. Definición de luz global. Ventajas y desventajas respecto a la luz local.

## Junio de 2019

1. Definir trazado de rayos, explicar como funciona. Ventajas y desventajas frente a 
radiosidad.

2. Explicar cómo funciona el sombreado de phong. Ventajas y desventajas respecto al resto
de técnicas de sombreado.

3. Explicar por qué se usan coordenadas homogeneas en las transformaciones geométricas.

4. Definir las características de los fractales y decir que aplicaciones tiene.

5. Dibujar los modelos de RGB y HSV con sus respectivos ejes. Decir donde está definida 
la escala de grises.

# Comentarios

Por supuesto, siéntete libre para clonar, compartir, abrir un issue o realizar un pull 
requests si quieres añadir exámenes de otros años o modificar alguna errata.
