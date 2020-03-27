utils
classWithTraits

	^ classWithTraits ifNil: [
			classWithTraits := Object 
				subclass: #SomeObject 
				uses: self trait1 + self trait2
				slots:  #()
				classVariables: ''  
				poolDictionaries: '' 
				package: #'MonticelloTonel-Tests'.
			classesAndTraits add: classWithTraits.
			classWithTraits ]
		
	