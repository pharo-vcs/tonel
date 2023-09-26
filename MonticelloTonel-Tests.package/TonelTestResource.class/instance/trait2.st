accessing
trait2

	^ trait2 ifNil: [
		  trait2 := Trait named: #T2 uses: #(  ) package: #'MonticelloTonel-Tests'.
		  classesAndTraits add: trait2.
		  trait2 ]