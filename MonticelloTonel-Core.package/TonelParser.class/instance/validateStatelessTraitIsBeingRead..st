private
validateStatelessTraitIsBeingRead: metadata
	| vars |
	
	vars := Set new.
	vars 
		addAll: (metadata at: #instVars ifAbsent: [ #() ]);
		addAll: (metadata at: #classInstVars ifAbsent: [ #() ]).
	
	vars ifNotEmpty: [ 
		self error: 'Trying to load a stateful trait in a stateless version.' ]