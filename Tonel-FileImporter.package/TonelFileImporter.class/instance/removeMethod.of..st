selecting
removeMethod: aSelector of: aClassName
	"Remove the definition of the method aSelector. aClassName names the instance side (e.g. #Foo) or the class side (e.g. 'Foo class')."

	| isMeta className |
	isMeta := aClassName endsWith: ' class'.
	className := (isMeta
		              ifTrue: [ aClassName allButLast: ' class' size ]
		              ifFalse: [ aClassName ]) asSymbol.
	self definitions removeAllSuchThat: [ :each |
			each isMethodDefinition and: [
				each className = className and: [ each selector = aSelector asSymbol and: [ each classIsMeta = isMeta ] ] ] ]