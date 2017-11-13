testing
isStartingString
	"I accept if character is $' but is not preceded by a $$"
	^ char = $' and: [ prevChar ~= $$ ]