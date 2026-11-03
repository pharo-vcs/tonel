testing
skipCommentOn: aStream
	"Skip the comment starting at aStream position, where a doubled quote stands for a quote. Answer false when the comment is not closed."

	aStream next.
	[ aStream atEnd ] whileFalse: [
			aStream next = $" ifTrue: [
					aStream peek = $"
						ifTrue: [ aStream next ]
						ifFalse: [ ^ true ] ] ].
	^ false