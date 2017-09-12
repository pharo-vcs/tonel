accessing
definitionOrders
	"Used to sort definitions inside a snapshot"
	^ Dictionary newFromPairs: { 
		MCOrganizationDefinition. 	0.
		MCMethodDefinition. 			1.
		MCClassDefinition. 			2.
		MCTraitDefinition. 			2.
		MCClassTraitDefinition. 		2 }