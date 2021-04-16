

# Ejercicio 7

### Sea la jerarquía de Empleado como muestra la figura de la izquierda, cuya implementación se incluye en la tabla de la derecha 
 
![image](https://user-images.githubusercontent.com/62031847/114939370-b64e8380-9e16-11eb-984e-ab530be8df63.png)

### Analice cada uno de los siguientes fragmentos de código y resuelva las tareas indicadas abajo:

![image](https://user-images.githubusercontent.com/62031847/114939448-d3835200-9e16-11eb-83fe-5b4c6536a270.png)

### a)  Liste los métodos que son ejecutados como resultado del envío del último mensaje (por ejemplo, método #aportes de la clase X, ...) 
### b)  Responda qué retorna la última expresión en cada caso  

A - 
Expresion 1 

'''
Gerente >> initazile
Gerente >> aportes
           Gerente >> montoBasico (lo grafico asi poruqe se ejecuta dentro de aportes)
'''           
La primera expresion nos devuelve 50, ya que el gerente usa su poropio metodo aportes y calcula su aporte a traves de su montoBasico

Expresion 2

1 - Primero llama a gerente usa calcularSueldo => Gerente >> calcularSueldo (esta en EmpleadoJerarquico)
2 - El metodo calcularSueldo esta en la clase padre, EmpleadoJerarquic, ese metodo usa dos metodos mas uno es sueldoBasico que esta en empleado, el otro es bonoPorCategoria que esta en EmpleadoJerarquico, primero va a ejecutar el super sueldoBasico que esta en la clase padre Empleado, ==> EmpleadoJerarquico >> sueldoBasico (esta en empleado)
3 - En empleado el metodo montoBasico tiene dos operaciones dentro de el , ^self montoBasioco - self aportes, analizando esto el self hace referencia a gerente poruqe disparo el metodo calcularSueldo, por lo tanto los metodos montoBasioco y aportes los buscara primero en gerente, primero hace => Gerente >> montoBasico que nos devuelve 1000, y luego hace ==> Gerente >> aportes que nos devuelve 50.
  Al volver, se hace la operacion entre estos dos resultados y se retorna el valor 950
4 - Una vez que volvio el resultado de sueldoBasico a EmpleadoJerarquico queda analizar la otra parte que nos pide el metodo, el cual es self bonoCategoria entonces lo hace ==> EmpleadoJerarquico >> bonoPorCategoria ,  esto nos devuelve 200. Al tener ya el valor de sueldoBasico(950) y el valor de bonoPorCategoria(200), se hace la operacion. y el metodo nos devueve 1150

B - 
expresion 1 - 50
expresion 2 - 1150





