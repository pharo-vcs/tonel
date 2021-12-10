running
tearDown 
	
	classesAndTraits reverse do: [ :aClassOrTrait | aClassOrTrait removeFromSystem ].
	super tearDown