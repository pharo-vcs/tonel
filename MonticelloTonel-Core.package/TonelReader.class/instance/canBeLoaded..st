private
canBeLoaded: aFileReference
	^ (self fileUtils fileName: aFileReference) endsWith: '.st'