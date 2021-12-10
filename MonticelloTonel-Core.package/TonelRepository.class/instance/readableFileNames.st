accessing
readableFileNames

	| all cached new |
	all := self allFileNames. "in disk"
	all := all reject: [ :each | each beginsWith: '.' ].
	cached := self cachedFileNames. "in memory"
	new := all \ cached.
	^ cached asArray , new select: [ :ea | self canReadFileNamed: ea ]