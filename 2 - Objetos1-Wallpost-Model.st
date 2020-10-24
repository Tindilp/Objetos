Object subclass: #Wallpost
	instanceVariableNames: 'text like featured'
	classVariableNames: ''
	package: 'Objetos1-Wallpost-Model'!

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 20:32'!
text:descriptionText
	"Setea el texto descriptivo de la publicació"
	text:=descriptionText.! !

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 20:32'!
text
	"Retorna el texto descriptivo de la publicación"
	^ text.! !

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 20:33'!
initialize
	"Inicializa el estado de las variables de instancia del Wallpost. Luego de la invocación el Wallpost debe tener como texto: “Undefined post”, no debe estar marcado como destacado y la cantidad de “Me gusta” deben ser 0."
	like:= 0. 
	text:=' Undefine text'.
	featured := false.! !

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 19:35'!
dislike
	"Decrementa la cantidad de likes en uno. Si ya es 0, no hace nada"	
	like > 0 ifTrue: [like:=like-1]! !

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 20:32'!
toggleFeatured 
	"Cambia el post del estado destacado a no destacado y viceversa"
	featured := featured not.! !

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 20:32'!
likes
	"Retorna la cantidad de me gusta"
	^like.! !

!Wallpost methodsFor: 'accessing' stamp: 'Lucas 9/16/2020 20:33'!
like
	"Incrementa la cantidad de likes en uno"
	like:=like+1.! !


!Wallpost methodsFor: 'testing' stamp: 'Lucas 9/16/2020 20:39'!
isFeatured
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	^featured ! !
