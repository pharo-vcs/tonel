utils
trait1

	^ trait1 ifNil: [
		trait1 := Trait named: #T1 uses: #() package: #'MonticelloTonel-Tests'.
		classesAndTraits add: trait1.
		trait1 ]