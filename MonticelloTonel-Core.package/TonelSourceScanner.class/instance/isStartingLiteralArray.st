testing
isStartingLiteralArray
	"I accept if character is $( and is preceded by $#"
	^ char = $( and: [ prevChar = $# ]