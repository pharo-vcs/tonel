accessing
forVersion: aVersion

	^ self allSubclasses
		  detect: [ :class | class formatVersion = aVersion ]
		  ifNone: [ TonelWriterV1 ]