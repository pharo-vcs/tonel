selecting
methodsOf: aClassName
	"Answer the method definitions of the class named aClassName, instance and class side."

	^ self methodDefinitions select: [ :each | each className = aClassName asSymbol ]