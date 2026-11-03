selecting
methodDefinitions

	^ self definitions select: [ :each | each isMethodDefinition ]