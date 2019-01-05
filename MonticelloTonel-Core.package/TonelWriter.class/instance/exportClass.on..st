writing
exportClass: aClass on: aStream
	snapshot := MCSnapshot
		fromDefinitions:
			{aClass asClassDefinition} , (aClass localMethods collect: [ :each | each asRingDefinition asMCMethodDefinition ])
				, (aClass classSide localMethods collect: [ :each | each asRingDefinition asMCMethodDefinition ]).
	self writeClass: aClass asClassDefinition on: aStream.
	^ aStream