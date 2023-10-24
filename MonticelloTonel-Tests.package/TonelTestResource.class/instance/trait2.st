accessing
trait2

	^ trait2 ifNil: [
		  trait2 := self class classInstaller make: [ :aBuilder |
			            aBuilder
				            beTrait;
				            name: #T2;
				            package: #'MonticelloTonel-Tests' ].
		  classesAndTraits add: trait2.
		  trait2 ]