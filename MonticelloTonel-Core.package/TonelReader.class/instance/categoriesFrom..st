private
categoriesFrom: aCollection
	^ ((aCollection select: [:each | each isClassDefinition])
		collect: [:each | each category]
		as: Set)
		sorted: [ :a :b | a < b ]