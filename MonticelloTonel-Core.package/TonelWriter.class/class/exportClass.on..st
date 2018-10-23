writing - class
exportClass: aClass on: aStream
	"I take a class and a stream as parameter and export the class in Tonel format into the stream."
	
	^ self new exportClass: aClass on: aStream