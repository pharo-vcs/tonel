utils
classWithTraitsWithClassComposition

	^ classWithTraitsWithClassComposition ifNil: [
		  classWithTraitsWithClassComposition := self class classInstaller make: [ :aBuilder |
			                                         aBuilder
				                                         name: #SomeObject2;
				                                         superclass: Object;
				                                         traitComposition: self trait1 + self trait2;
				                                         classTraitComposition: self trait1 classTrait + self trait2 classTrait - #m1;
				                                         package: #'MonticelloTonel-Tests' ].
		  classesAndTraits add: classWithTraitsWithClassComposition.
		  classWithTraitsWithClassComposition ]