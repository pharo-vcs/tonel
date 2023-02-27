private
readUntilTermination: matchChar
	| terminationCount |
	"This is used to read sequences that start and finish with same character termination.
	 tipically, this is for strings and comments, but who knows what comes in the future."
	terminationCount := 1.
	self readUntil: [
		char = matchChar ifTrue: [ terminationCount := terminationCount + 1 ].
		terminationCount even and: [ stream peek ~= matchChar ] ]