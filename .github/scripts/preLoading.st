IceRepository registry remove: (IceRepository repositoryNamed: #tonel).
#( 'BaselineOfTonel' ) do: [ :each | 
	(RPackageOrganizer default packageNamed: each ifAbsent: [ nil ]) 
		ifNotNil: [ :aPackage | aPackage removeFromSystem ] ]
