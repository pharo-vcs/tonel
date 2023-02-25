writing - class
sourceCodeOf: aClass
	"I take as a parameter a class and I return it's tonel export as a String."

	^ String streamContents: [ :aStream | self new exportClass: aClass on: aStream ]