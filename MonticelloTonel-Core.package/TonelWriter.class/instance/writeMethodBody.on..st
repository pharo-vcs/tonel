private - writing
writeMethodBody: methodBody on: aStream

	| nl |
	nl := self newLine.
	aStream << ' [' << methodBody << nl << ']' << nl