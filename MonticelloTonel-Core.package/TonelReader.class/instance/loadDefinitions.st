loading
loadDefinitions

	| definitionOrders newDefinitions tagNames |
	definitionOrders := self class definitionOrders.

	newDefinitions := ((self packageDirectory entries select: [ :file | self canBeLoaded: file ]) collect: [ :file | self parseTonelFile: file ]) flattened sort: [
		                  :a
		                  :b | (definitionOrders at: a class) < (definitionOrders at: b class) ].

	self ensurePackagesAndTagsOfDefinitions: newDefinitions.

	tagNames := newDefinitions
		            select: #isClassDefinition
		            thenCollect: #tagName.
	tagNames := tagNames asSet reject: [ :tag | tag isNil ].

	definitions := (newDefinitions copyWith: (MCOrganizationDefinition packageName: self package name tagNames: tagNames)) sort