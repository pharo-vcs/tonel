private writing
writeInstanceSideMethodDefinitions: aClassDefinition on: aStream
	((snapshot definitions
		select: [ :each |
			each isMethodDefinition
			and: [ each className = aClassDefinition className
			and: [ each classIsMeta not ] ] ])
		sorted: [ :a :b | a selector < b selector ])
		do: [ :each |
			self writeMethodDefinition: each parent: aClassDefinition on: aStream ]