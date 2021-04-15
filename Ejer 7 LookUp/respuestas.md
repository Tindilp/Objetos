

# Ejercicio 7

### Sea la jerarquía de Empleado como muestra la figura de la izquierda, cuya implementación se incluye en la tabla de la derecha 
 
![image](https://user-images.githubusercontent.com/62031847/114939370-b64e8380-9e16-11eb-984e-ab530be8df63.png)

### Analice cada uno de los siguientes fragmentos de código y resuelva las tareas indicadas abajo:

![image](https://user-images.githubusercontent.com/62031847/114939448-d3835200-9e16-11eb-83fe-5b4c6536a270.png)

### a)  Liste los métodos que son ejecutados como resultado del envío del último mensaje (por ejemplo, método #aportes de la clase X, ...) 
### b)  Responda qué retorna la última expresión en cada caso  


La primera expresion nos devuelve 50, ya que el gerente usa su poropio metodo aportes y calcula su aporte a traves de su montoBasico

En la segunda expresion nos devuelve 1150, esto sucede porque Gerente nos pide calcularSueldo, al no tener este metodo, lo ira a buscar a la clase padre, la cual es EmpleadoJerarquico, en esa clase encuentra el mensaje calcularSueldo y a partir de ahi lo comienza a reasolver


