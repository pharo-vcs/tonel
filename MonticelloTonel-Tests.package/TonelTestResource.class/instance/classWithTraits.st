accessing
classWithTraits

	^ classWithTraits ifNil: [
		  classWithTraits := self class classInstaller make: [ :aBuilder |
			                     aBuilder
				                     name: #SomeObject;
				                     superclass: Object;
				                     traitComposition: self trait1 + self trait2;
				                     package: #'MonticelloTonel-Tests' ].
		  classesAndTraits add: classWithTraits.
		  classWithTraits ]