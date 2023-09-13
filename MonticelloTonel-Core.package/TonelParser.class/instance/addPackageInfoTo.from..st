private - factory
addPackageInfoTo: definition from: metadata
	"In Pharo we can have packages and tags and since Pharo 12 Tonel export those.
	But in previous versions of Pharo, packages and tags were exported as categories.
	Also, in other Smalltalks they export only categories.
	
	If we have the package and tag we set them directly.
	Else we keep the category in the package variable and TonelReader will check if it can split the package and tag based on the folder name that is the package name."

	metadata
		at: #package
		ifPresent: [ :package |
			definition packageName: package.
			metadata at: #tag ifPresent: [ :tag | definition tagName: tag ] ]
		ifAbsent: [ definition packageName: (metadata at: #category) ]