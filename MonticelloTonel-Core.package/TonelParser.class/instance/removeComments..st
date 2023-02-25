private
removeComments: original
	| newStream readStream inComment |

	newStream := original copy writeStream.
	readStream := original readStream.
	inComment := false.

	[ readStream atEnd ] whileFalse: [ | ch |

		ch := readStream next.

		(ch = $") ifTrue:[
			inComment := inComment not.
			ch := readStream next.
		].

		(inComment or:[ ch isNil]) ifFalse: [ newStream nextPut: ch	 ]
	].

	^ newStream contents