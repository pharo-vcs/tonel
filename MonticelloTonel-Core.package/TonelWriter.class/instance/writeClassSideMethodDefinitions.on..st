private - writing
writeClassSideMethodDefinitions: aClassDefinition on: aStream
	((snapshot definitions
		select: [ :each |
			each isMethodDefinition
			and: [ each className = aClassDefinition className
			and: [ each classIsMeta ] ] ])
		sorted: [ :a :b | a selector < b selector ])
		do: [ :each |
			self writeMethodDefinition: each parent: aClassDefinition on: aStream ]