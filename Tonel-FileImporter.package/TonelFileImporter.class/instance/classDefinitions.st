selecting
classDefinitions
	"Answer the class and trait definitions."

	^ self definitions select: [ :each | each isClassDefinition ]