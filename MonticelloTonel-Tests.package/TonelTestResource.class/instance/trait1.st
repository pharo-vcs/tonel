accessing
trait1

	^ trait1 ifNil: [
		  trait1 := self class classInstaller make: [ :aBuilder |
			            aBuilder
				            beTrait;
				            name: #T1;
				            package: #'MonticelloTonel-Tests' ].
		  classesAndTraits add: trait1.
		  trait1 ]