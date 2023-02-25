utils
classWithTraitsWithClassComposition

	^ classWithTraitsWithClassComposition ifNil: [
			classWithTraitsWithClassComposition := Object
				subclass: #SomeObject2
				uses: self trait1 + self trait2
				slots:  #()
				classVariables: ''
				poolDictionaries: ''
				package: #'MonticelloTonel-Tests'.
			classesAndTraits add: classWithTraitsWithClassComposition.
			classWithTraitsWithClassComposition class traitComposition: self trait1 classTrait + self trait2 classTrait - #m1.
			classWithTraitsWithClassComposition ]