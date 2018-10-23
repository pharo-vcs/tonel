I'm a monticello writer for tonel format, writing
 - a package per directory
 - a class per file
 - a set of extensions to a single class per file (for example, all extensions of a package to String will be in a single file)

I'm created on a file reference to a directory where the package will be written.

[[[
TonelWriter on: ('someDirectory' asFileReference ensureCreateDirectory)
]]]

My main methods are
- ==#writeVersion:== that receives as argument a monticello version to write, from where I'll extract the corresponding monticello snapshot.
- ==#writeSnapshot:== that receives as argument a monticello snapshot to write, from where I'll write all the contained definitions.

I also provide a way to easily export a single class in the Tonel format to a stream. 

[[[
	TonelWriter sourceCodeOf: self.
	
	(FileSystem memory / 'test.st') writeStreamDo: [ :s | TonelWriter exportClass: self on: s ]; yourself.
]]]

! Implementation details

Notice that while writing, if the written package/snapshot already exists in the directory I'll overwrite it (i.e., remove it and recreate it).