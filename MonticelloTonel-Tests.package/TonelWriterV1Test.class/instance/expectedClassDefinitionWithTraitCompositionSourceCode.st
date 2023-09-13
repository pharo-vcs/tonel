private
expectedClassDefinitionWithTraitCompositionSourceCode

	^ '"
comment test
"
Class {
	#name : #SomeObject,
	#superclass : #Object,
	#traits : ''T1 + T2'',
	#classTraits : ''T1 classTrait + T2 classTrait'',
	#category : #Kernel,
	#package : #Kernel
}
'