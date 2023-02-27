accessing
extension
	"This is needed because the implementation of MCCacheRepository assumes each package
	 has an extension (which is a lame implementation) and then we need to provide one.
	 Since tonel is not cached (because we have our oen cache in the form of a local repository),
	 we put something that will not be found anyway"
	^ 'NOTUSED'