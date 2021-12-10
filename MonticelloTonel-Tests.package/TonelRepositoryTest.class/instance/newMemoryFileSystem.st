private - factory
newMemoryFileSystem
	"This method assumes writer works. If it is broken (the tests should show it), this tests 
	 will break too."

	| memory |
	memory := FileSystem memory root.
	(TonelWriter on: memory) writeSnapshot: self mockSnapshot.
	^ memory