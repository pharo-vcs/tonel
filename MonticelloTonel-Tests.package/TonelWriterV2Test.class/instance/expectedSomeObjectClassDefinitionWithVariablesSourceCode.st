private
expectedSomeObjectClassDefinitionWithVariablesSourceCode

	^ '"
comment test
"
Class {
	#name : ''SomeObject'',
	#superclass : ''Object'',
	#instVars : [
		''a'',
		''b'',
		''c''
	],
	#classVars : [
		''D'',
		''E''
	],
	#pools : [
		''POOL''
	],
	#classInstVars : [
		''instVarA''
	],
	#category : ''Kernel'',
	#package : ''Kernel''
}
'