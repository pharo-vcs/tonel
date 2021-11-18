private
expectedClassWithTraitsDefinitionSourceCode

	^ 'Class {
	#name : ''SomeObject2'',
	#superclass : ''Object'',
	#traits : ''T1 + T2'',
	#classTraits : ''(T1 classTrait + T2 classTrait) - {#m1}'',
	#category : ''MonticelloTonel-Tests''
}
'