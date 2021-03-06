Object subclass: #Balanza
	instanceVariableNames: 'cantidadDeProductos precioTotal pesoTotal'
	classVariableNames: ''
	package: 'Objetos1-BalanzaElectronica'!

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:47'!
cantidadDeProductos: unaCantidad 
	cantidadDeProductos := unaCantidad! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:47'!
pesoTotal: unPeso
	pesoTotal := unPeso! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:48'!
precioTotal: unPrecio 
	precioTotal := unPrecio! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:28'!
cantidadDeProductos
	^ cantidadDeProductos! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:30'!
ponerEnCero
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	pesoTotal := 0.
	precioTotal := 0.
	cantidadDeProductos := 0.! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:28'!
precioTotal
	^ precioTotal! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 12:06'!
initialize
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	pesoTotal := 0.
	precioTotal := 0.
	cantidadDeProductos := 0.! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:52'!
emitirTicket
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	|ticket|
	ticket := Ticket new.
	ticket fecha. 
	ticket cantidadDeProductos:cantidadDeProductos.
	ticket pesoTotal:pesoTotal.
	ticket precioTotal: precioTotal. 
	ticket impuesto. 
	^ticket 
	
	! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:28'!
pesoTotal
	^ pesoTotal! !

!Balanza methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:33'!
agregarProducto:unProducto
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	cantidadDeProductos := cantidadDeProductos + 1.
	pesoTotal:= pesoTotal + unProducto peso.
	precioTotal := precioTotal + unProducto precio.! !


Object subclass: #Producto
	instanceVariableNames: 'precioPorKilo peso descripcion'
	classVariableNames: ''
	package: 'Objetos1-BalanzaElectronica'!

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
descripcion
	^ descripcion! !

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:47'!
precioPorKilo: unPrecio
	precioPorKilo := unPrecio! !

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
descripcion: anObject
	descripcion := anObject! !

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:33'!
precio
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	^peso*precioPorKilo ! !

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:47'!
peso: unPeso
	peso := unPeso! !

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
precioPorKilo
	^ precioPorKilo! !

!Producto methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
peso
	^ peso! !


Object subclass: #Ticket
	instanceVariableNames: 'fecha cantidadDeProductos pesoTotal precioTotal'
	classVariableNames: ''
	package: 'Objetos1-BalanzaElectronica'!

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:46'!
cantidadDeProductos: unaCantidad
	cantidadDeProductos := unaCantidad! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:46'!
pesoTotal: unPeso
	pesoTotal := unPeso! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
precioTotal: anObject
	precioTotal := anObject! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
cantidadDeProductos
	^ cantidadDeProductos! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
precioTotal
	^ precioTotal! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 12:20'!
initialize
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	fecha := Date today.
	pesoTotal:= 0.
	precioTotal := 0.
	cantidadDeProductos :=0.! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 12:21'!
fecha
	^fecha! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 11:29'!
pesoTotal
	^ pesoTotal! !

!Ticket methodsFor: 'accessing' stamp: 'Lucas 9/18/2020 13:45'!
impuesto
	^precioTotal * 0.21.
! !
