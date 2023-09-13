loading
ensurePackagesAndTagsOfDefinitions: aCollectionOfDefinition
	"Since Pharo 12 we are exporting the packages and tags in the types metadatas but in previous version of Pharo we have the infos in the form of a single string.
	In case we have the legacy format, the parser set the whole category as the package name and here we will check with the folder name what part is the package and what part is the tag name."

	| packageName |
	packageName := self packageNameFromPackageDirectory.

	aCollectionOfDefinition
		select: [ :definition | definition isClassDefinition ]
		thenDo: [ :classDefinition |
			classDefinition packageName = packageName ifFalse: [
				(classDefinition packageName beginsWith: packageName , '-')
					ifTrue: [
						classDefinition
							tagName: (classDefinition packageName withoutPrefix: packageName , '-');
							packageName: packageName ]
					ifFalse: [
						self error:
							'Category name not matching the package name. The class named "' , classDefinition className , '" has the category "' , classDefinition packageName
							, '" but should be in the package ' , packageName ] ] ]