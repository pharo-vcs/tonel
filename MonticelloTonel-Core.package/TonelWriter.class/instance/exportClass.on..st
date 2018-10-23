writing
exportClass: aClass on: aStream
	snapshot := (MCVersion package: (MCPackage named: aClass package name)) snapshot.
	self writeClass: aClass asClassDefinition on: aStream.
	^ aStream