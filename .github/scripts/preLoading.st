IceRepository registry remove: (IceRepository repositoryNamed: #tonel).
#( 'BaselineOfTonel' ) do: [ :each | (each asPackageIfAbsent: [ nil ]) ifNotNil: #removeFromSystem ]
