# Ejercicio 8: Subclase de TestCase para probar la clase Set (Conjunto)

### Implemente el ejemplo provisto en la sección 6.1 (Writing a test in 2 minutes) del libro "Learning Object-Oriented Programming, Design and TDD with Pharo". En el ejemplo se escribe un test de unidad (incompleto) para la clase Set (conjunto).

### En el ejemplo solo se chequea que:
### si agrego un elemento a un conjunto vacío, pasa a tener un solo elemento
### si vuelvo a agregar el mismo elemento, el tamaño del conjunto no cambia

### Extienda el ejemplo con un test llamado #testConstructor para que compruebe que al crear un conjunto, el mismo responde al mensaje #isEmpty con true. 

### Ahora responda:
### 1. Para implementar los tests tuvo que definir una nueva clase: ¿De qué clase es subclase?

    Es sublcalase de TestCase
    
### 2. Para hacer comprobaciones tuvo que enviar a "self" los mensajes #assert:equals: , #assert: y #deny: ¿Dónde están implementados los métodos que corresponden a esos mensajes? ¿Por qué los entiende su objeto si usted nunca los implementó?
    
    El mensaje asssert: se encuentra en la clase Object y deny: en la clase TAssertable
    Porque los heredan de las clase padre
    
### 3. En los métodos que hacen las pruebas, 
### - ¿Quién es "self"? 
### - ¿De qué clase es instancia?
### - En respuesta al mensaje #assert:equals: su objeto de test ejecuta un método que hereda, ¿cierto?
### - Busque la implementación del método #assert:equals: que su objeto hereda. ¿Dónde está implementado?
### - El método #assert:equals: hace referencia a "self". Cuando su objeto ejecuta el método #assert:equals: que hereda, ¿quién es self? ¿de qué clase es? 


