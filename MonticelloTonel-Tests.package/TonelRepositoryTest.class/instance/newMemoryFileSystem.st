private factory
newMemoryFileSystem
	"This method assumes writer works. If it is broken (the tests should show it), this tests 
	 will break too."
	| mem |
	mem := FileSystem memory root.
	(TonelWriter on: mem) writeSnapshot: self mockSnapshot.
	^ mem