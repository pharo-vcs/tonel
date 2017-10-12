loading
loadDefinitions
	| definitionOrders newDefinitions newCategories organization |
	
	definitionOrders := self class definitionOrders.
	newDefinitions := ((self packageDirectory entries
		select: [ :each | self canBeLoaded: each ]) 
		collect: [ :each | each readStreamDo: [ :s | TonelParser parseStream: s ] ])
		flattened
		sort: [ :a :b | (definitionOrders at: a class) < (definitionOrders at: b class) ].

	newCategories := self categoriesFrom: newDefinitions.
	(newCategories includes: self package name asSymbol)
		ifFalse: [ newCategories := newCategories copyWithFirst: self package name ].
	organization := MCOrganizationDefinition categories: newCategories.
	
	definitions := (newDefinitions copyWithFirst: organization) sort