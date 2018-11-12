testing
isStartingLiteralArray
	"Literal array starts with a sharp sign followed by parenthesis in Smalltalk syntax"
	^ char = $( and: [ prevChar = $# ]