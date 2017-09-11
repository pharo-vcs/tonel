instance creation
basicFromUrl: anUrl
	"remove 'tonel://' and go"
	^ self new directory: (anUrl asString allButFirst: self description size) asFileReference