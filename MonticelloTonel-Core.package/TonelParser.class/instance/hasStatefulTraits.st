private testing
hasStatefulTraits
	
	self flag: #TODO. "HACK to know if current traits implementation has stateful traits available. 
	 This uterly ugly and needs to be removed in the future (when dropping compatibility with 
	 older versions)"
	
	^ MCTraitDefinition respondsTo: #name:traitComposition:category:instVarNames:classInstVarNames:comment:commentStamp: