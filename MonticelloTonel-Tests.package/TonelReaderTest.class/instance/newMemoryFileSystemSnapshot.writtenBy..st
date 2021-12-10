private - factory
newMemoryFileSystemSnapshot: aSnapshop writtenBy: aTonelWriter
	"This method assumes writer works. If it is broken (the tests should show it), this tests 
	 will break too."

	| memory |
	memory := FileSystem memory root.
	(aTonelWriter on: memory) writeSnapshot: aSnapshop.
	^ memory