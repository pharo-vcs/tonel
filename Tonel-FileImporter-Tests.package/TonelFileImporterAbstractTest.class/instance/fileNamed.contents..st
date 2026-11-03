fixtures
fileNamed: aString contents: aContentsString
	"Write aContentsString in a file of the memory file system and answer its reference."

	| file |
	file := fileSystem / aString.
	file writeStreamDo: [ :stream | stream nextPutAll: aContentsString ].
	^ file