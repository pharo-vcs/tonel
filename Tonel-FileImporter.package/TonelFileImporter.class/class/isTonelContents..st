testing
isTonelContents: aString
	"Answer whether aString starts like a Tonel class, trait or extension file: optional separators and comment, then Class, Trait or Extension followed by an opening brace."

	| stream keyword |
	stream := aString readStream.
	stream skipSeparators.
	stream peek = $" ifTrue: [
			(self skipCommentOn: stream) ifFalse: [ ^ false ].
			stream skipSeparators ].
	keyword := String streamContents: [ :out |
		           [ stream atEnd not and: [ stream peek isLetter ] ] whileTrue: [ out nextPut: stream next ] ].
	stream skipSeparators.
	^ (#( 'Class' 'Trait' 'Extension' ) includes: keyword) and: [ stream peek = ${ ]