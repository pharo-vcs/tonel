instance creation
on: aStream
	^ self basicNew 
		initializeStream: aStream;
		yourself