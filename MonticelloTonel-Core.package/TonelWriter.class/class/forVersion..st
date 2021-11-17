accessing
forVersion: aVersion

	^ aVersion = TonelWriterV2 formatVersion
		  ifTrue: [ TonelWriterV2 ]
		  ifFalse: [ TonelWriterV1 ]