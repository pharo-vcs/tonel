tests
testWriteSnapshot
	| writer memoryFileReference |
	
	memoryFileReference := FileSystem memory root.
	writer := self actualClass on: memoryFileReference.
	writer writeSnapshot: self mockSnapshot.
	
	self checkFilesStructureIn: memoryFileReference