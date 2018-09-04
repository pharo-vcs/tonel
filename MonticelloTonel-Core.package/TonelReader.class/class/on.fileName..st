reading
on: parentDirectoryReference fileName: packageName
	"I will anster a reader for the package stored in 
	
		[repository]/parentDirectoryReference/packageName
	
	This operation will NOT read the package, but resulting instance will be prepared
	to doit, executing: #loadDefinitions"

	^ (self on: parentDirectoryReference)
		packageDirectory: packageName;
		yourself