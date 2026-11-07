testing
isTonelFile: aFileReference
	"Answer whether aFileReference holds a Tonel class, trait or extension, judging from its first characters only."

	| file |
	file := aFileReference asFileReference.
	(file exists and: [ file isFile ]) ifFalse: [ ^ false ].
	^ self isTonelContents: (file readStreamDo: [ :stream | stream next: self headerSize ])