I'm a monticello reader for tonel format repositories. I read
 - a package per directory
 - a class per file
 - a set of extensions to a single class per file (for example, all extensions of a package to String will be in a single file)

I'm created on a file reference to a directory where the package will be read and the name of the package to read.

[[[
TonelReader on: 'someDirectoryWithTonelPackages' asFileReference filename: 'MyPackageName'
]]]

My main method is
- ==#definitions== reads and parses the tonel file, returns a list of monticello definitions.
- ==#snapshot== returns a monticello snapshot with the read definitions.
- ==#version== returns a monticello version with the read snapshot.

! Implementation details

The monticello versions I return do have artificial information. Since I'm just meant to read versions from a directory, this directory has no information such as commit message, commit time, author, or ancestors. Check the method ==#loadVersionInfo== for more information.